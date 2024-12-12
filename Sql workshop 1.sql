SELECT "hello world" as message , 123 as id;

SELECT * fROM city;


SELECT Name AS nm, District AS dist FROM city
WHERE CountryCode = 'ARM';

SELECT * FROM city
WHERE name like 'Bor%';

SELECT * FROM city
WHERE name like '%orto%';

SELECT * FROM city
WHERE Population < 1000;

SELECT DISTINCT CountryCode FROM City
WHERE population < 1000 ;

SELECT * FROM city
WHERE CountryCode = 'UKR' AND Population > 1000000;

SELECT * FROM city
WHERE Population < 200 OR Population > 9500000;

SELECT * FROM city
WHERE CountryCode IN ('TJK', 'MRT', 'AND', 'PNG', 'SJM');

SELECT * FROM city
WHERE Population BETWEEN 200 AND 700;

SELECT * FROM city
WHERE Population BETWEEN 8000 AND 20000;

SELECT name FROM country
WHERE IndepYear <0;

SELECT * FROM country
WHERE IndepYear IS NULL AND	Population > 1000000;

SELECT * FROM country
WHERE SurfaceArea < 10 AND  LifeExpectancy IS NOT NULL;







