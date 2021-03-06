﻿INSERT INTO Cabinet(personCapacity) VALUES (3);
INSERT INTO Cabinet(personCapacity) VALUES (12);
INSERT INTO Cabinet(personCapacity) VALUES (19);
INSERT INTO Cabinet(personCapacity) VALUES (35);
INSERT INTO Cabinet(personCapacity) VALUES (8);
INSERT INTO Cabinet(personCapacity) VALUES (13);
INSERT INTO Cabinet(personCapacity) VALUES (26);
INSERT INTO Cabinet(personCapacity) VALUES (34);

INSERT INTO EquipmentType(name) VALUES ('Microscope');
INSERT INTO EquipmentType(name) VALUES ('Flask');
INSERT INTO EquipmentType(name) VALUES ('Pipette');
INSERT INTO EquipmentType(name) VALUES ('Syringe');
INSERT INTO EquipmentType(name) VALUES ('Ultracentrifuge');
INSERT INTO EquipmentType(name) VALUES ('Tourniquet');
INSERT INTO EquipmentType(name) VALUES ('Burette');
INSERT INTO EquipmentType(name) VALUES ('Colorimeter');

INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (4, 7);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (6, 3);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (1, 2);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (7, 7);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (6, 6);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (5, 3);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (4, 2);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (8, 1);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (5, 5);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (5, 5);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (5, 5);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (3, 8);
INSERT INTO Equipment(equipmentTypeId, cabinetId) VALUES (5, 1);

INSERT INTO Sponsor(name) VALUES ('3M');
INSERT INTO Sponsor(name) VALUES ('Entropin');
INSERT INTO Sponsor(name) VALUES ('Knoll Pharmaceutical Company');
INSERT INTO Sponsor(name) VALUES ('Genentech, Inc.');
INSERT INTO Sponsor(name) VALUES ('Tularik');
INSERT INTO Sponsor(name) VALUES ('Wyeth Ayerst');
INSERT INTO Sponsor(name) VALUES ('Novo Nordisk');

INSERT INTO ResearchScope(name, scopePriority) VALUES ('Medicine', 1);
INSERT INTO ResearchScope(name, scopePriority) VALUES ('Biology', 2);
INSERT INTO ResearchScope(name, scopePriority) VALUES ('AI', 3);
INSERT INTO ResearchScope(name, scopePriority) VALUES ('Chemistry', 2);

INSERT INTO Research(name, scopeId) VALUES ('Trial of a Secondary Stroke Prevention Program', 1);
INSERT INTO Research(name, scopeId) VALUES ('Sequential Treatment of Pediatric MDD to Increase Remission and Prevent Relapse', 1);
INSERT INTO Research(name, scopeId) VALUES ('Regulators of Mouse and Human Beta Cell Proliferation', 2);
INSERT INTO Research(name, scopeId) VALUES ('The Molecular Mechanism of Synaptic Tagging and Capture', 2);
INSERT INTO Research(name, scopeId) VALUES ('Slow recombination in quantum dot solid solar cell using p–i–n architecture with organic p-type hole transport material', 3);

INSERT INTO Sponsorship(sponsorId, researchId, price) VALUES (5, 1, 10);
INSERT INTO Sponsorship(sponsorId, researchId, price) VALUES (7, 4, 20);
INSERT INTO Sponsorship(sponsorId, researchId, price) VALUES (2, 4, 30);
INSERT INTO Sponsorship(sponsorId, researchId, price) VALUES (1, 3, 40);
INSERT INTO Sponsorship(sponsorId, researchId, price) VALUES (6, 2, 50);
INSERT INTO Sponsorship(sponsorId, researchId, price) VALUES (4, 2, 60);
INSERT INTO Sponsorship(sponsorId, researchId, price) VALUES (4, 1, 70);
INSERT INTO Sponsorship(sponsorId, researchId, price) VALUES (3, 2, 80);

INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Kelcey', 'Lucas', 1, 1);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Horea', 'Herbertson', 1, 5);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Ejiro', 'Slootmaekers', 0, 5);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Atte', 'Potter', 0, 3);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Melanija', 'Chow', 0, 1);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Dobromil', 'Pesaresi', 1, 2);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Marko', 'Pinheiro', 1, 4);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Salvador', 'Johnson', 1, 3);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Kimbra', 'Mallory', 1, 3);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Lewis', 'Sutton', 0, 3);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Warren', 'Taylor', 1, 2);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Jewel', 'Merritt', 1, 5);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Jae', 'Romilly', 1, 4);
INSERT INTO Researcher(firstName, lastName, degree) VALUES ('Easton', 'Trask', 1);
INSERT INTO Researcher(firstName, lastName, degree) VALUES ('Betty', 'Rogerson', 0);
INSERT INTO Researcher(firstName, lastName, degree) VALUES ('Stew', 'Thacker', 1);
INSERT INTO Researcher(firstName, lastName, degree, researchId) VALUES ('Fenton', 'Elder', 1, 3);

INSERT INTO RawMaterial(name, materialWeight, researcherId) VALUES ('Albendazole', 10, 4);
INSERT INTO RawMaterial(name, materialWeight, researcherId) VALUES ('Borage Seed Essential Oil', 20, 3);
INSERT INTO RawMaterial(name, materialWeight, researcherId) VALUES ('Melatonin', 30, 4);
INSERT INTO RawMaterial(name, materialWeight, researcherId) VALUES ('Biological Pesticide', 40, 2);
INSERT INTO RawMaterial(name, materialWeight, researcherId) VALUES ('Alpha Arbutin Powder', 50, 4);
INSERT INTO RawMaterial(name, materialWeight, researcherId) VALUES ('Ginseng Extract', 60, 3);
INSERT INTO RawMaterial(name, materialWeight, researcherId) VALUES ('Chondroitin Sulfate', 70, 3);
INSERT INTO RawMaterial(name, materialWeight, researcherId) VALUES ('Astaxanthin', 80, 4);
INSERT INTO RawMaterial(name, materialWeight, researcherId) VALUES ('Astragalus Root Extract', 90, 17);
INSERT INTO RawMaterial(name, materialWeight) VALUES ('Pregnenolone', 100);
INSERT INTO RawMaterial(name, materialWeight, researcherId) VALUES ('ExtraMaterial1', 1001, 17);
INSERT INTO RawMaterial(name, materialWeight) VALUES ('ExtraMaterial2', 111);

INSERT INTO ResearcherCabinet(researcherId, cabinetId, resCabDate) VALUES (15, 7, '2005-09-01');
INSERT INTO ResearcherCabinet(researcherId, cabinetId, resCabDate) VALUES (12, 3, '2005-09-01');
INSERT INTO ResearcherCabinet(researcherId, cabinetId, resCabDate) VALUES (5, 8, '2005-09-01');
INSERT INTO ResearcherCabinet(researcherId, cabinetId, resCabDate) VALUES (3, 1, '2005-09-02');
INSERT INTO ResearcherCabinet(researcherId, cabinetId, resCabDate) VALUES (1, 2, '2005-09-02');
INSERT INTO ResearcherCabinet(researcherId, cabinetId, resCabDate) VALUES (17, 5, '2005-09-02');
INSERT INTO ResearcherCabinet(researcherId, cabinetId, resCabDate) VALUES (6, 1, '2005-09-03');
INSERT INTO ResearcherCabinet(researcherId, cabinetId, resCabDate) VALUES (10, 4, '2005-09-03');