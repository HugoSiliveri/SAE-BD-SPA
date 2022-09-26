-- SILIVERI Hugo --
-- RODRIGUES Joris --
-- BRIZAY Gabin --

-- Script d'Insertion des Données --
-- Sujet: La SPA --

-- INSERTION DANS TOUTES LES TABLES --

--VILLES:

INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (0, 'Perpignan', 'Pyrénées-Orientales', 123068);
INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (1, 'Canet en Roussillon', 'Pyrénées-Orientales', 11965);
INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (2, 'Bordeaux', 'Gironde', 262146);
INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (3, 'Talence', 'Gironde', 42171);
INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (4, 'Lattes', 'Hérault', 16298);
INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (5, 'Gignac', 'Hérault', 5943);
INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (6, 'Paris', 'Île-de-France', 2161000);
INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (7, 'Béziers', 'Hérault', 75999);
INSERT INTO VILLES (idVille, nomVille, departement) VALUES (8, 'Brest', 'Finistère');
INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (9, 'Strasbourg', 'Bas-Rhin',285202);
INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (10, 'Biarritz', 'Pyrénées-Atlantiques',24502);
INSERT INTO VILLES (idVille, nomVille, departement, nombreHabitant) VALUES (11, 'Bourg Palette', 'Kanto', 11);


--REFUGES:

INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) VALUES (0, 'Pyrénées Animales', 25, 14.50, 0);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, villeRefuge) VALUES (1, 'Chenil Fantastique', 45, 2);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, villeRefuge) VALUES (2, 'Les Génies des Chiots', 20, 3);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) VALUES (3, 'Le Paradis Animalier', 27, 36.80, 1);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) VALUES(4, 'Refuge de Lattes', 25, 60, 4);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) VALUES(5, 'Refuge du Soleil', 69, 30, 5);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) VALUES(6, 'Refuge de Paris', 51, 15, 6);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) VALUES(7, 'Au refuge', 27, 45, 7);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, villeRefuge) VALUES (8, 'Au petit bonheur', 100, 2);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) VALUES (9, 'Le bazar des animaux', 150, 30, 7);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) VALUES (10, 'Pension Pokemon', 50, 99.99, 11);
INSERT INTO REFUGES (idRefuge, nomRefuge, capaciteAccueilMax, tarifPension, villeRefuge) VALUES (11, 'La niche de vos rêves', 250, 65, 3);


--ADOPTANTS:

INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, dateNaissanceAdoptant, villeAdoptant) VALUES (0, 'Ché', 'Scott', '15/01/1975', 2);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, villeAdoptant) VALUES (1, 'Croche', 'Sarah', 0);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, villeAdoptant) VALUES (2, 'Kafergaf', 'Xavier', 1);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, dateNaissanceAdoptant, villeAdoptant) VALUES (3, 'Leclerc', 'Samantha', '26/02/2003', 0);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, villeAdoptant) VALUES (4, 'Chirac', 'Jack', 4);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, villeAdoptant) VALUES (5, 'Sylverhand', 'Johnny', 4);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, dateNaissanceAdoptant, villeAdoptant) VALUES (6, 'Zola', 'Emyle', '16/10/1980', 5);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, dateNaissanceAdoptant, villeAdoptant) VALUES (7, 'Perez', 'Lucas', '20/04/1998', 7);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, villeAdoptant) VALUES (8, 'Hyère', 'Jacques', 3);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, dateNaissanceAdoptant, villeAdoptant) VALUES (9, 'Ketchum', 'Sacha', '01/04/1987',11);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, dateNaissanceAdoptant, villeAdoptant) VALUES (10, 'Hyère', 'Jacques', '20/09/2000',3);
INSERT INTO ADOPTANTS (idAdoptant, nomAdoptant, prenomAdoptant, dateNaissanceAdoptant, villeAdoptant) VALUES (11, 'Amploa', 'Paul', '01/04/1987', 0);

--FOURRIERES:

INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (0, 'Fourrière Girondine', 3);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (1, 'Fourrière de Perpinya', 0);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (2, 'Chenil Bordelais', 2);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (3, 'Fourrière Méditerranéenne', 1);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (4, 'Fourrière de Lattes', 4);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (5, 'Fourrière de la nuit', 6);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (6, 'AlaFourière', 7);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (7, 'Fourrière de Paris', 6);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (8, 'Les Nettoyeurs', 4);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (9, 'La Compagnie des Animaux', 3);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (10, 'Compagnimaux', 7);
INSERT INTO FOURRIERES (idFourriere, nomFourriere, villeFourriere) VALUES (11, 'La Fourrière du 64', 10);


--CATEGORIES:

INSERT INTO CATEGORIES (idCategorie, nomCategorie) VALUES (0, 'Abandon');
INSERT INTO CATEGORIES (idCategorie, nomCategorie) VALUES (1, 'Maltraitance');
INSERT INTO CATEGORIES (idCategorie, nomCategorie) VALUES (2, 'Adopté');

--ANIMAUX:

INSERT INTO ANIMAUX (idAnimal, nomAnimal, ageAnimal, espece, race, idCategorie, idRefugeAccueil, dateAccueilRefuge, idAdoptant, dateAdoption) VALUES (0, 'Ice Tea', 6, 'Chien', 'King Charles', 2, 0, '10/09/2016', 3, '28/03/2017');
INSERT INTO ANIMAUX (idAnimal, nomAnimal, ageAnimal, espece, race, idCategorie, idRefugeAccueil, dateAccueilRefuge) VALUES (1, 'Cooky', 7, 'Chien', 'Cocker Spaniel Anglais', 0, 2, '06/11/2019');
INSERT INTO ANIMAUX (idAnimal, nomAnimal, espece, idCategorie, idRefugeAccueil, dateAccueilRefuge) VALUES (2, 'Meryl', 'Demi-Guise', 1, 3, '14/04/2008');
INSERT INTO ANIMAUX (idAnimal, nomAnimal, ageAnimal, espece, idCategorie, idRefugeAccueil, dateAccueilRefuge) VALUES (3, 'Pete', 2, 'Ara', 0, 1, '07/10/2021');
INSERT INTO ANIMAUX (idAnimal, nomAnimal, ageAnimal, espece, race, idCategorie, idRefugeAccueil, dateAccueilRefuge) VALUES(4,'Spot' ,9 ,'Chien', 'Husky', 0, 7, '05/01/2021');
INSERT INTO ANIMAUX (idAnimal, nomAnimal, ageAnimal, espece, race, idCategorie, idRefugeAccueil, dateAccueilRefuge, idAdoptant, dateAdoption) VALUES(5,'Cooper' ,3 ,'Chien', 'Husky', 2 ,4 ,'05/01/2021', 4, '05/01/2021');
INSERT INTO ANIMAUX (idAnimal, nomAnimal, ageAnimal, espece, idCategorie, idRefugeAccueil, dateAccueilRefuge) VALUES(6,'Rouky' ,2 ,'Chat', 1, 5, '17/04/2021');
INSERT INTO ANIMAUX (idAnimal, nomAnimal, espece, idCategorie, idRefugeAccueil, dateAccueilRefuge) VALUES(7, 'Kraky', 'Kraken', 1, 6, '01/04/2021');
INSERT INTO ANIMAUX (idAnimal, nomAnimal, ageAnimal, espece, race, idCategorie, dateAccueilRefuge, idRefugeAccueil) VALUES (8, 'Rocky', 10, 'Chien','Berger Allemand', 0, '20/10/2017', 3);
INSERT INTO ANIMAUX (idAnimal, nomAnimal, ageAnimal, espece, race, idCategorie, dateAccueilRefuge, idRefugeAccueil, idAdoptant, dateAdoption ) VALUES (9, 'Pikachu', 27, 'Souris', 'Pikachu', 2, '27/02/1996', 10, 9,'01/04/1997');
INSERT INTO ANIMAUX (idAnimal, nomAnimal, ageAnimal, espece, race, idCategorie, dateAccueilRefuge, idRefugeAccueil, idAdoptant, dateAdoption ) VALUES (10, 'Dorlis', 2, 'Chien','Berger Allemand', 2, '05/07/2020', 3, 11,'07/01/2022');
INSERT INTO ANIMAUX (idAnimal, nomAnimal, ageAnimal, espece, race, idCategorie, dateAccueilRefuge, idRefugeAccueil) VALUES (11, 'Rocky', 27, 'Tortue', 'Mauresque', 1, '01/12/2019', 3);

--PENSIONS:

INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (0, 0, 3, 3, 36.80);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension) VALUES (1, 1, 2, 10);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (2, 2, 0, 5, 12.25);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (3, 2, 0, 2, 14.50);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (4, 4, 4, 1, 16.30);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (5, 7, 5, 1, 32.75);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (6, 6, 7, 5, 20);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (7, 5, 6, 14, 45);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (8, 8, 11, 30, 40.10);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (9, 8, 10, 2, 20.30);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (10, 5, 8, 12, 60.20);
INSERT INTO PENSIONS (idPension, idAnimal, idRefuge, tempsPension, tarifPension) VALUES (11, 3, 11, 21, 13.99);

--ETRE_PARTENAIRE:

INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (0, 3);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (3, 3);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (1, 0);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (1, 2);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (4, 7);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (5, 6);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (6, 5);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (7, 4);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (0, 9);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (3, 8);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (2, 11);
INSERT INTO ETRE_PARTENAIRE (idRefuge, idFourriere) VALUES (10, 8);

--BENEVOLES:

INSERT INTO BENEVOLES (idBenevole, nomBenevole, prenomBenevole, dateNaissanceBenevole) VALUES (0, 'Ouvryé', 'Cole', '16/08/1990');
INSERT INTO BENEVOLES (idBenevole) VALUES (1);
INSERT INTO BENEVOLES (idBenevole, nomBenevole, prenomBenevole) VALUES (2, 'Ticoli', 'Nestor');
INSERT INTO BENEVOLES (idBenevole, nomBenevole, dateNaissanceBenevole) VALUES (3, 'Kafergaf', '26/03/2000');
INSERT INTO BENEVOLES (idBenevole, prenomBenevole) VALUES (4, 'Loïc');
INSERT INTO BENEVOLES (idBenevole, nomBenevole, prenomBenevole, dateNaissanceBenevole) VALUES (5, 'Castex', 'Jean', '01/05/1995');
INSERT INTO BENEVOLES (idBenevole, nomBenevole, prenomBenevole) VALUES (6, 'Jean', 'Thibault');
INSERT INTO BENEVOLES (idBenevole, nomBenevole, prenomBenevole, dateNaissanceBenevole) VALUES (7, 'Kenoby', 'Edward', '13/10/1999');
INSERT INTO BENEVOLES (idBenevole, dateNaissanceBenevole) VALUES (8, '25/12/1991');
INSERT INTO BENEVOLES (idBenevole, nomBenevole, prenomBenevole) VALUES (9, 'Hyère', 'Jacques');
INSERT INTO BENEVOLES (idBenevole, nomBenevole, prenomBenevole, dateNaissanceBenevole) VALUES (10, 'Ouche', 'Jacques', '20/09/2000');
INSERT INTO BENEVOLES (idBenevole, nomBenevole, prenomBenevole, dateNaissanceBenevole) VALUES (11, 'Cépakaré', 'Cicéron', '27/01/2003');

--TRAVAILLER:

INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (0, 0, 56);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (2, 1, 10);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (2, 2, 4);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (3, 3, 6);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (4, 4, 5);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (5, 6, 7);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (6, 7, 8);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (7, 5, 4);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (8, 3, 200);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (8, 7, 46);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (2, 10, 192);
INSERT INTO TRAVAILLER (idBenevole, idRefuge, temps) VALUES (11, 11, 1);

--DONNER:

INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (1, 3, 45);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (3, 1, 5.50);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (1, 2, 30.15);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (0, 0, 300);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (4, 6, 200);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (5, 5, 666);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (6, 5, 697);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (7, 4, 425);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (5, 9, 30);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (0, 11, 3000);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (10, 6, 1);
INSERT INTO DONNER (idBenevole, idRefuge, montant) VALUES (11, 2, 500);