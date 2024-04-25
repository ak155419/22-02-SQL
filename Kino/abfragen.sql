SELECT * FROM Film;
--Challenge 1--
SELECT DISTINCT Jahr FROM Film
ORDER BY Jahr;
SELECT MIN (Jahr) AS ältestes_Erscheinungsjahr FROM Film;
 
--Challenge 2--
SELECT Titel
FROM Film
WHERE Länge = (SELECT MAX(Länge) FROM Film);

--Challenge 3--
SELECT COUNT(*) AS Anzahl_Filme_Ridley_Scott
FROM Film
INNER JOIN Regisseur ON Film.RegisseurID = Regisseur.RegisseurID
WHERE Regisseur.Nachname = 'Scott';

--Challenge 4--
SELECT ROUND(AVG(Länge), 0) AS Durchschnittliche_Länge
FROM Film;

--Challenge 5-- 
SELECT COUNT(DISTINCT R.RegisseurID) AS Anzahl_Regisseure
FROM Regisseur R
LEFT JOIN Film F ON R.RegisseurID = F.RegisseurID
WHERE F.RegisseurID IS NOT NULL;

--Challenge 6-- 
SELECT Jahr
FROM Film
GROUP BY Jahr
HAVING COUNT(*) = (
    SELECT MAX(FilmCount)
    FROM (
        SELECT COUNT(*) AS FilmCount
        FROM Film
        GROUP BY Jahr
    ) AS FilmCounts
);

--Challenge 7-- 
SELECT AVG(Länge) AS Durchschnittslänge
FROM Film
JOIN Regisseur ON Film.RegisseurID = Regisseur.RegisseurID
WHERE Regisseur.Vorname = 'Ridley' AND Regisseur.Nachname = 'Scott';

--Challenge 8-- 
SELECT COUNT(*) AS Anzahl_Filme, Regisseur.Vorname
FROM Film
JOIN Regisseur ON Film.RegisseurID = Regisseur.RegisseurID
WHERE Film.Jahr BETWEEN 1972 AND 2000
GROUP BY Regisseur.Vorname;