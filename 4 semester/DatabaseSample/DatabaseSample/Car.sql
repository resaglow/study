﻿CREATE TABLE [Car]
(
    [Number] NCHAR(10) PRIMARY KEY NOT NULL,
    [Type] NVARCHAR(MAX) NOT NULL,
    [Brand] NVARCHAR(MAX) NOT NULL,
    [Driver] NVARCHAR(MAX) NOT NULL,
    [Color] NVARCHAR(MAX) NOT NULL,
    [FreePlacesCount] INT NOT NULL
)