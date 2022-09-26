
--R1:
/* 
 * Le code et le nom des refuges qui sont dans la même ville que les fourrières dont elles sont partenaires.
 *
 * Résultat attendu :
 *
 *  IDREFUGE	NOMREFUGE	
 *  1           Chenil Fantastique	
 *  3	        Le Paradis Animalier	
 *  6	        Refuge de Paris	
*/
SELECT r.idRefuge, nomRefuge
FROM REFUGES r
JOIN ETRE_PARTENAIRE e ON e.idRefuge = r.idRefuge
JOIN FOURRIERES f ON f.idFourriere = e.idFourriere
WHERE villeRefuge = villeFourriere;

--R2:
/* 
 * Le nom, le prénom (si ils sont connus) et le montant du bénévole qui à donné le plus d'argent
 *
 * Résultat attendu :
 *
 *  NOMBENEVOLE	    PRENOMBENEVOLE    MONTANT
 *  Ouvryé	        Cole	          3000
*/
SELECT nomBenevole, prenomBenevole, montant 
FROM BENEVOLES b
JOIN DONNER d on b.idBenevole = d.idBenevole
WHERE montant = (SELECT MAX(montant) 
                 FROM DONNER);
                 
--R3:
/* 
 * Le nom des catégories avec le nombre d'animaux à qui ils appartiennent
 *
 * Résultat attendu :
 *
 *  NOMCATEGORIE	NBANIMAUX
 *  Maltraitance	4
 *  Adopté	        4
 *  Abandon	        4
*/
SELECT nomCategorie, COUNT(idAnimal) AS nbAnimaux
FROM CATEGORIES c
JOIN ANIMAUX a ON a.idCategorie = c.idCategorie
GROUP BY nomCategorie;

--R4:
/* 
 * Le nom du refuge et le nombre d'heure dans lequel 'Ticoli Nestor' a le plus travaillé ainsi que celui dans lequel il a le moins travaillé. 
 *
 * Résultat attendu :
 *
 * NOMREFUGE	            TEMPS
 * Les Génies des Chiots	4 
 * Pension Pokemon	        192
*/
SELECT nomRefuge, temps
FROM REFUGES r
JOIN TRAVAILLER t ON t.idRefuge = r.idRefuge
JOIN BENEVOLES b ON b.idBenevole = t.idBenevole
WHERE nomBenevole = 'Ticoli' AND prenomBenevole = 'Nestor' AND temps = (SELECT MIN(temps)
                                                                        FROM BENEVOLES b
                                                                        JOIN TRAVAILLER t ON b.idBenevole = t.idBenevole 
                                                                        WHERE nomBenevole = 'Ticoli' AND prenomBenevole = 'Nestor')
UNION
SELECT nomRefuge, temps
FROM REFUGES r
JOIN TRAVAILLER t ON t.idRefuge = r.idRefuge
JOIN BENEVOLES b ON b.idBenevole = t.idBenevole
WHERE nomBenevole = 'Ticoli' AND prenomBenevole = 'Nestor' AND temps = (SELECT MAX(temps)
                                                                        FROM BENEVOLES b
                                                                        JOIN TRAVAILLER t ON b.idBenevole = t.idBenevole 
                                                                        WHERE nomBenevole = 'Ticoli' AND prenomBenevole = 'Nestor');

--R5:
/* 
 * Pour chaque ville, le nombre de refuges classé du plus grand au plus petit.
 *
 * Résultat attendu :
 *
 * NOMVILLE	                NBREFUGE
 * Bordeaux	                2
 * Béziers	                2
 * Talence	                2
 * Bourg Palette	        1
 * Canet en Roussillon	    1
 * Gignac	                1
 * Lattes	                1
 * Paris	                1
 * Perpignan	            1
 * Biarritz	                0
 * Brest	                0
 * Strasbourg	            0 
*/
SELECT nomVille, COUNT(*) AS nbRefuge
FROM Villes v
JOIN REFUGES r ON v.idVille = r.villeRefuge
GROUP BY idVille,nomVille
      
UNION

SELECT nomVille, 0 AS nbRefuge
FROM VILLES 
WHERE idVille NOT IN (SELECT villeRefuge
                      FROM REFUGES)
ORDER BY nbRefuge DESC;
      