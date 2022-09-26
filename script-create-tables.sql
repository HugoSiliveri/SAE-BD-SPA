-- SUPPRESSION DE TOUTES LES TABLES --

DROP TABLE ANIMAUX CASCADE CONSTRAINT;
DROP TABLE CATEGORIES CASCADE CONSTRAINT;
DROP TABLE REFUGES CASCADE CONSTRAINT;
DROP TABLE FOURRIERES CASCADE CONSTRAINT;
DROP TABLE VILLES CASCADE CONSTRAINT;
DROP TABLE BENEVOLES CASCADE CONSTRAINT;
DROP TABLE DONNER CASCADE CONSTRAINT;
DROP TABLE TRAVAILLER CASCADE CONSTRAINT;
DROP TABLE ADOPTANTS CASCADE CONSTRAINT;
DROP TABLE ETRE_PARTENAIRE CASCADE CONSTRAINT;
DROP TABLE PENSIONS CASCADE CONSTRAINT;

-- CREATION DE TOUTES LES TABLES SANS CLEFS ETRANGERES --

CREATE TABLE ANIMAUX (
  idAnimal NUMBER(4,0), nomAnimal VARCHAR(30), ageAnimal NUMBER(2,0), espece VARCHAR(30), race VARCHAR(30), idCategorie NUMBER(1,0), idRefugeAccueil NUMBER(3,0), dateAccueilRefuge DATE, idAdoptant NUMBER(4,0), dateAdoption DATE, 
  CONSTRAINT PK_Animaux PRIMARY KEY (idAnimal),
  CONSTRAINT NN_nomAnimal_Animaux CHECK (nomAnimal IS NOT NULL),
  CONSTRAINT NN_idCategorie_Animaux CHECK (idCategorie IS NOT NULL),
  CONSTRAINT NN_dateAccueil_Animaux CHECK (dateAccueilRefuge IS NOT NULL),
  CONSTRAINT NN_idRefuge_Animaux CHECK (idRefugeAccueil IS NOT NULL));

CREATE TABLE CATEGORIES (
  idCategorie NUMBER(1,0), nomCategorie VARCHAR(30),
  CONSTRAINT PK_Categories PRIMARY KEY (idCategorie),
  CONSTRAINT NN_nomCategorie_Categorie CHECK (nomCategorie IS NOT NULL),
  CONSTRAINT CK_nomCategorie_Categorie CHECK (nomCategorie IN ('Abandon', 'Maltraitance', 'Adopté')));

CREATE TABLE REFUGES (
  idRefuge NUMBER (3,0), nomRefuge VARCHAR(30), capaciteAccueilMax NUMBER(3,0), tarifPension NUMBER(4,2), villeRefuge NUMBER(4,0),
  CONSTRAINT PK_Refuges PRIMARY KEY (idRefuge),
  CONSTRAINT NN_nomRefuge_Refuges CHECK (nomRefuge IS NOT NULL),
  CONSTRAINT NN_capaciteMax_Refuges CHECK (capaciteAccueilMax IS NOT NULL),
  CONSTRAINT NN_ville_Refuges CHECK (villeRefuge IS NOT NULL),
  CONSTRAINT CK_capaciteMax_Refuges CHECK (capaciteAccueilMax >= 10),
  CONSTRAINT CK_tarifPension_Refuges CHECK (tarifPension > 0));

CREATE TABLE VILLES (
  idVille NUMBER(4,0), nomVille VARCHAR(30), departement VARCHAR(30), nombreHabitant NUMBER,
  CONSTRAINT PK_Villes PRIMARY KEY (idVille),
  CONSTRAINT NN_nomVille_Villes CHECK (nomVille IS NOT NULL),
  CONSTRAINT NN_departement_Villes CHECK (departement IS NOT NULL),
  CONSTRAINt CK_nbHabitant_Villes CHECK (nombreHabitant > 0));

CREATE TABLE FOURRIERES (
  idFourriere NUMBER(3,0), nomFourriere VARCHAR(30), villeFourriere NUMBER(4,0),
  CONSTRAINT PK_Fourrieres PRIMARY KEY (idFourriere),
  CONSTRAINT NN_nomFourriere_Fourriere CHECK (nomFourriere IS NOT NULL),
  CONSTRAINT NN_ville_Fourrieres CHECK (villeFourriere IS NOT NULL));

CREATE TABLE BENEVOLES (
  idBenevole NUMBER(4,0), nomBenevole VARCHAR(40), prenomBenevole VARCHAR(40), dateNaissanceBenevole DATE,
  CONSTRAINT PK_Benevoles PRIMARY KEY (idBenevole));

CREATE TABLE DONNER (
  idBenevole NUMBER(4,0), idRefuge NUMBER(3,0), montant NUMBER(6,2),
  CONSTRAINT PK_Donner PRIMARY KEY (idBenevole, idRefuge),
  CONSTRAINT CK_montant_Donner CHECK (montant > 0));

CREATE TABLE TRAVAILLER (
  idBenevole NUMBER(4,0), idRefuge NUMBER(3,0), temps NUMBER(4,0),
  CONSTRAINT PK_Travailler PRIMARY KEY (idBenevole, idRefuge),
  CONSTRAINT CK_temps_Travailler CHECK (temps > 0));

CREATE TABLE ADOPTANTS (
  idAdoptant NUMBER(4,0), nomAdoptant VARCHAR(40), prenomAdoptant VARCHAR(40), dateNaissanceAdoptant DATE, villeAdoptant NUMBER(4,0),
  CONSTRAINT PK_Adoptants PRIMARY KEY (idAdoptant),
  CONSTRAINT NN_nomAdoptant_Adoptants CHECK (nomAdoptant IS NOT NULL),
  CONSTRAINT NN_preAdoptant_Adoptants CHECK (prenomAdoptant IS NOT NULL),
  CONSTRAINT NN_ville_Adoptants CHECK (villeAdoptant IS NOT NULL));

CREATE TABLE ETRE_PARTENAIRE (
  idRefuge NUMBER(3,0), idFourriere NUMBER(3,0),
  CONSTRAINT PK_EtrePartenaire PRIMARY KEY (idRefuge, idFourriere));

CREATE TABLE PENSIONS (
  idPension NUMBER(4,0), idAnimal NUMBER(4,0), idRefuge NUMBER(3,0), tempsPension NUMBER(2,0), tarifPension NUMBER(4,2),
  CONSTRAINT PK_Pensions PRIMARY KEY (idPension),
  CONSTRAINT NN_tempsPension_Pensions CHECK (tempsPension IS NOT NULL),
  CONSTRAINT NN_idAnimal_Pensions CHECK (idAnimal IS NOT NULL),
  CONSTRAINT NN_idRefuge_Pensions CHECK (idRefuge IS NOT NULL),
  CONSTRAINT CK_tempsPension_Pensions CHECK (tempsPension > 0),
  CONSTRAINT CK_tarifPension_Pensions CHECK (tarifPension > 0));

-- AJOUT CLEFS ETRANGERES --

ALTER TABLE ANIMAUX ADD CONSTRAINT FK_idCategorie_Animaux FOREIGN KEY (idCategorie) REFERENCES CATEGORIES(idCategorie);
ALTER TABLE ANIMAUX ADD CONSTRAINT FK_idAdoptant_Animaux FOREIGN KEY (idAdoptant) REFERENCES ADOPTANTS(idAdoptant);
ALTER TABLE ANIMAUX ADD CONSTRAINT FK_idRefuge_Animaux FOREIGN KEY (idRefugeAccueil) REFERENCES REFUGES(idRefuge);
ALTER TABLE REFUGES ADD CONSTRAINT FK_ville_Refuges FOREIGN KEY (villeRefuge) REFERENCES VILLES(idVille);
ALTER TABLE FOURRIERES ADD CONSTRAINT FK_ville_Fourrieres FOREIGN KEY (villeFourriere) REFERENCES VILLES(idVille);
ALTER TABLE DONNER ADD CONSTRAINT FK_idRefuge_Donner FOREIGN KEY (idRefuge) REFERENCES REFUGES(idRefuge);
ALTER TABLE DONNER ADD CONSTRAINT FK_idBenevole_Donner FOREIGN KEY (idBenevole) REFERENCES BENEVOLES(idBenevole);
ALTER TABLE TRAVAILLER ADD CONSTRAINT FK_idBenevole_Travailler FOREIGN KEY (idBenevole) REFERENCES BENEVOLES(idBenevole);
ALTER TABLE TRAVAILLER ADD CONSTRAINT FK_idRefuge_Travailler FOREIGN KEY (idRefuge) REFERENCES REFUGES(idRefuge);
ALTER TABLE ADOPTANTS ADD CONSTRAINT FK_ville_Adoptants FOREIGN KEY (villeAdoptant) REFERENCES VILLES(idville);
ALTER TABLE PENSIONS ADD CONSTRAINT FK_idAnimal_Pensions FOREIGN KEY (idAnimal) REFERENCES ANIMAUX(idAnimal);
ALTER TABLE PENSIONS ADD CONSTRAINT FK_idRefuge_Pensions FOREIGN KEY (idRefuge) REFERENCES REFUGES(idRefuge);
ALTER TABLE ETRE_PARTENAIRE ADD CONSTRAINT FK_idFourriere_Partenaire FOREIGN KEY (idFourriere) REFERENCES FOURRIERES(idFourriere);
ALTER TABLE ETRE_PARTENAIRE ADD CONSTRAINT FK_idRefuge_Partenaire FOREIGN KEY (idRefuge) REFERENCES REFUGES(idRefuge);

