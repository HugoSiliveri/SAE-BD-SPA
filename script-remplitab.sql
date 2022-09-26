-- MAJ DE ANIMAUX --
UPDATE ANIMAUX SET idRefugeAccueil = NULL AND dateAccueilRefuge = NULL WHERE idCategorie = 2;

-- AJOUT DE DATES --
INSERT INTO DATES(dateDon) VALUES('01/10/2015');
INSERT INTO DATES(dateDon) VALUES('27/04/2010');
INSERT INTO DATES(dateDon) VALUES('16/08/2021');
INSERT INTO DATES(dateDon) VALUES('20/12/2006');
INSERT INTO DATES(dateDon) VALUES('02/01/2017');

-- AJOUT DE S_OCCUPER --
INSERT INTO S_OCCUPER(idAnimal, idBenevole, idRefuge) VALUES (1,2,1);
INSERT INTO S_OCCUPER(idAnimal, idBenevole, idRefuge) VALUES (1,3,3);
INSERT INTO S_OCCUPER(idAnimal, idBenevole, idRefuge) VALUES (4,7,5);
INSERT INTO S_OCCUPER(idAnimal, idBenevole, idRefuge) VALUES (2,2,10);
INSERT INTO S_OCCUPER(idAnimal, idBenevole, idRefuge) VALUES (4,8,3);

-- AJOUT DE DONS --
UPDATE DONNER SET dateDon = 2 WHERE idBenevole = 1 AND idRefuge = 3;
UPDATE DONNER SET dateDon = 1 WHERE idBenevole = 3 AND idRefuge = 1; 
UPDATE DONNER SET dateDon = 3 WHERE idBenevole = 1 AND idRefuge = 2;
UPDATE DONNER SET dateDon = 2 WHERE idBenevole = 0 AND idRefuge = 0;
UPDATE DONNER SET dateDon = 1 WHERE idBenevole = 4 AND idRefuge = 6;
UPDATE DONNER SET dateDon = 0 WHERE idBenevole = 5 AND idRefuge = 5;
UPDATE DONNER SET dateDon = 0 WHERE idBenevole = 6 AND idRefuge = 5;
UPDATE DONNER SET dateDon = 1 WHERE idBenevole = 7 AND idRefuge = 4;
UPDATE DONNER SET dateDon = 4 WHERE idBenevole = 5 AND idRefuge = 9;
UPDATE DONNER SET dateDon = 3 WHERE idBenevole = 0 AND idRefuge = 11;
UPDATE DONNER SET dateDon = 3 WHERE idBenevole = 10 AND idRefuge = 6;
UPDATE DONNER SET dateDon = 0 WHERE idBenevole = 11 AND idRefuge = 2;