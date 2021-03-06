module ParserCombinators where

newtype Parser s a = P (s -> [(a, s)])

apply :: Parser s a -> s -> [(a, s)]
apply (P p) = p 

fail :: Parser s a
fail = P (\ _ -> [])

any :: Parser [s] ()
any = P p where
  p []     = [((), [])]
  p (_:ss) = [((), ss)]

sym :: Eq s => s -> Parser [s] s
sym c = P p where p (x:xs) | x == c = [(x, xs)]
                  p _               = []

lift :: Parser s a -> b -> Parser s a
lift p _ = p

val :: a -> Parser s a
val a = P (\s -> [(a, s)])

infixl 1 |||
(|||) :: Parser s a -> Parser s a -> Parser s a
(P p) ||| (P q) = P (\ s -> p s ++ q s)

-- Парсит первым парсером, на основании выхода первого парсера строит второй и парсит им
infixl 3 ||>
(||>) :: Parser s a -> (a -> Parser s b) -> Parser s b
(P p) ||> q = P (\s -> concat [apply (q a) s | (a, s) <- p s])

-- Применяет внутренний парсер, пока на очередном остатке тот не возвратит [], конкатенирует результаты 0+ применений
-- Хорошо понимается на примере какого парсера типа sym
many :: Parser s a -> Parser s [a]
many p = p ||> (\x -> many p ||> val . (x:)) ||| 
         val []

-- -//-, 1+ применений
some :: Parser s a -> Parser s [a]
some p = p ||> (\x -> many p ||> val . (x:))

opt :: Parser s a -> Parser s (Maybe a)
opt a = a ||> val . Just ||| val Nothing

eof :: Eq s => [(a, [s])] -> [a]
eof = map fst . filter ((==[]) . snd) 
