-- Task 1
SELECT * FROM city
WHERE name LIKE 'ping%' order by Population ASC;

-- Task 2
SELECT * FROM city
WHERE name LIKE 'ran%' order by Population DESC;

-- Task 3
SELECT COUNT(*) FROM city;

-- Task 4
SELECT AVG(Population) FROM city;

-- Task 5
SELECT MAX(Population) FROM city;

-- Task 6
SELECT MIN(Population) FROM city;

-- Task 7
SELECT SUM(Population) FROM city
WHERE Population < 10000;

-- Task 8
SELECT COUNT(*) FROM city
WHERE CountryCode IN ('MOZ', 'VNM');

-- Task 9
SELECT CountryCode, COUNT(*) As cityCount FROM city
WHERE CountryCode IN ('MOZ', 'VNM') group by CountryCode;

-- Task 10
SELECT CountryCode, AVG(Population) as AvgPopulation FROM city
WHERE CountryCode IN ('MOZ', 'VNM') group by CountryCode;

-- Task 11
SELECT CountryCode FROM city
GROUP BY CountryCode having Count(*)>200;

-- Task 12
SELECT CountryCode FROM City
GROUP BY CountryCode having Count(*)>200 ORDER BY count(*) DESC;

-- Task 13 
SELECT DISTINCT name, Language FROM city
JOIN  CountryLanguage ON city.CountryCode = countrylanguage.CountryCode 
WHERE Population BETWEEN 400 AND 500;

-- Task 13 Cleaner
SELECT DISTINCT CL.Language FROM CountryLanguage CL
JOIN City C ON CL.CountryCode = C.CountryCode
WHERE Population BETWEEN 400 AND 500;

-- Task 14
SELECT City.name, countrylanguage.language FROM City
JOIN countrylanguage ON City.countryCode = countrylanguage.CountryCode
WHERE City.Population BETWEEN 500 AND 600;

-- Task 15 What names of the cities are in the same country as the city with a population of 122199 (including that city itself)
SELECT C2.name FROM city
JOIN city C2 on City.Countrycode = C2.CountryCode
WHERE  City.Population = 122199;

-- Task 15 Alternative
 SELECT name FROM City 
 WHERE CountryCode = (SELECT CountryCode FROM city WHERE Population = 122199);
 

-- Task 16 What names of the cities are in the same country as the city with a population of 122199 (excluding that city itself)
SELECT C2.name FROM city
JOIN city C2 on City.Countrycode = C2.CountryCode
WHERE  City.Population = 122199 AND C2.Population != 122199 ;

-- Task 17 What are the city names in the country where Luanda is the capital?
SELECT City.name FROM city
JOIN country ON city.countrycode = country.code
WHERE country.Capital =(SELECT Id FROM City WHERE Name ='Luanda');

-- Task 18 What are the names of the capital cities in countries in the same region as the city named Yaren
SELECT City.name FROM city
JOIN country ON City.id = country.CapitalName
WHERE country.Region = (SELECT Region FROM country WHERE Capital =(SELECT Id FROM City WHERE Name ='Yaren'));

-- Task 19 What unique languages are spoken in the countries in the same region as the city named Riga
SELECT DISTINCT CountryLanguage.Language FROM CountryLanguage
JOIN Country ON CountryLanguage.CountryCode = Country.Code
WHERE country.Region = (SELECT Region FROM country WHERE Capital =(SELECT Id FROM City WHERE Name ='Riga'));

-- Task 20 Get the name of the most populous city
SELECT Name FROM city
ORDER BY Population DESC
Limit 1;