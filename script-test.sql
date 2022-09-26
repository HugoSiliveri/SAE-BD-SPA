-- Refuge - Pension - Villes --


INSERT INTO Villes(idVille, nomVille, departement, nombreHabitant) /*INSERT TEMOIN*/
           VALUES(1, 'Témoin', 14, 60000);
INSERT INTO Refuges(idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) /*INSERT TEMOIN*/
            VALUES(1,'PensionPokemon', 200, 40.30, 1);
INSERT INTO CATEGORIES(idCategorie, nomCategorie) /*INSERT TEMOIN*/
            VALUES(0, 'Abandon');
INSERT INTO Refuges(idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) /*INSERT TEMOIN*/
            VALUES(0,'PensionTest', 350, 50, 1);
INSERT INTO ANIMAUX(idAnimal, nomAnimal, idCategorie, dateAccueilRefuge, idRefugeAccueil) /*INSERT TEMOIN*/
            VALUES(0,'AnimalTest', 0, '16/07/2003', 0);
INSERT INTO Pensions(idPension, idAnimal, idRefuge, tempsPension, tarifPension) /*INSERT TEMOIN*/
            VALUES(1,0,1,30,99.99);



-- TABLE VILLE --

-- INSERT INTO --

-- Insertion d'un tuple dans Villes avec clé primaire déjà utilisée. Contrainte UNIQUE de clef primaire. 
INSERT INTO Villes(idVille, nomVille, departement, nombreHabitant)
           VALUES(1, 'Marseille', 13, 1000000);

-- Insertion d'un tuple dans Villes sans clé primaire. Contrainte NOT NULL de clef primaire.          
INSERT INTO Villes(nomVille, departement, nombreHabitant)
           VALUES('Marseille', 13, 1000000);

-- Insertion d'un tuple dans Villes sans nom de ville. Contrainte NOT NULL de nomVille.
INSERT INTO Villes(idVille, departement, nombreHabitant)
           VALUES(2, 14, 21900);

-- Insertion d'un tuple dans Villes sans département. Contrainte NOT NULL de departement.
INSERT INTO Villes(idVille, nomVille, nombreHabitant)
           VALUES(2, 'Marseille', 1000000);

-- Insertion d'un tuple dans Villes avec un nombre d'habitant négatif. Contrainte CHECK de nombreHabitant.
INSERT INTO Villes(idVille, nomVille, departement, nombreHabitant)
           VALUES(3, 'Paris', 75, -20102);




-- TABLE REFUGE --

-- INSERT INTO --

-- Insertion d'un tuple dans Refuges avec clé primaire déjà utilisée. Contrainte UNIQUE de clef primaire. 
INSERT INTO Refuges(idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge)
            VALUES(1, 'Animaux4ever', 20, 30, 1);

-- Insertion d'un tuple dans Refuges sans clé primaire. Contrainte NOT NULL de clef primaire.          
INSERT INTO Refuges(nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge)
            VALUES('Animaux4ever', 20, 30, 1);

-- UPDATE --

-- Edition de capaciteAccueilMax d'un tuple dans Refuges. Contrainte NOT NULL de capaciteAccueilMax
UPDATE Refuges SET capaciteAccuelMax = NULL WHERE idRefuge=1;

-- Edition du nomRefuge d'un tuple dans Refuges. Contrainte NOT NULL de nomRefuge
UPDATE Refuges SET nomRefuge = NULL WHERE idRefuge=1;

-- Edition de la villeRefuge d'un tuple dans Refuges. Contrainte NOT NULL de villeRefuge
UPDATE Refuges SET villeRefuge = NULL WHERE idRefuge=1;

-- Edition du tarifPension d'un tuple dans Refuges. Contrainte CHECK de tarifPension
UPDATE Refuges SET tarifPension = -29120 WHERE idRefuge=1;

-- Edition de capaciteAccueilMax d'un tuple dans Refuges. Contrainte CHECK de capaciteAccueilMax
UPDATE Refuges SET capaciteAccueilMax = 2 WHERE idRefuge=1;


-- DELETE FROM --

-- Suppression d'un tuple Villes. Contrainte d'intégrité référentielle non-respecté pour la table Refuges
DELETE FROM Villes WHERE idVille = 1;


-- TABLE REFUGE --

-- INSERT INTO --

-- Insertion d'un tuple dans Pensions avec clé primaire déjà utilisée. Contrainte UNIQUE de clef primaire. 
INSERT INTO Pensions(idPension, idAnimal, idRefuge, tempsPension, tarifPension)
            VALUES(1,0,1,30,20);
        
-- Insertion d'un tuple dans Pensions sans clé primaire. Contrainte NOT NULL de clef primaire.         
INSERT INTO Pensions(idAnimal, idRefuge, tempsPension, tarifPension) 
            VALUES(0,1,30,20);

-- UPDATE --

-- Edition de idRefuge d'un tuple dans Pensions. Contrainte NOT NULL de idRefuge
UPDATE Pensions SET idRefuge = NULL WHERE idPension=1;

-- Edition de idAnimal d'un tuple dans Pensions. Contrainte NOT NULL de idAnimal
UPDATE Pensions SET idAnimal = NULL WHERE idPension=1;

-- Edition de tempsPension d'un tuple dans Pensions. Contrainte NOT NULL de tempsPension
UPDATE Pensions SET tempsPension = NULL WHERE idPension=1;

-- Edition du tempsPension d'un tuple dans Pensions. Contrainte CHECK de tempsPension
UPDATE Pensions SET tempsPension = -20 WHERE idPension=1;

-- Edition du tarifPension d'un tuple dans Pensions. Contrainte CHECK de tarifPension
UPDATE Pensions SET tarifPension = -40 WHERE idPension=1;


-- DELETE FROM --

-- Suppression d'un tuple Refuges. Contrainte d'intégrité référentielle non-respecté pour la table Pensions
DELETE FROM Refuges WHERE idRefuge = 1;

-- Suppression d'un tuple Animaux. Contrainte d'intégrité référentielle non-respecté pour la table Pensions
DELETE FROM Animaux WHERE idAnimal = 0;  
   