SELECT * FROM Film;
--Challenge 1--
SELECT  DISTINCT Jahr FROM Film
ORDER BY Jahr
SELECT MIN (Jahr) AS ältestes_Erscheinungsjahr FROM Film;
 
--Challenge 2--
SELECT DISTINCT Länge FROM Film
ORDER BY Länge DESC
LIMIT 1;