/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
City

+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | int(11)  |
| Name        | char(35) |
| CountryCode | char(3)  |
| District    | char(20) |
| Population  | int(11)  |
+-------------+----------+
Country

+----------------+-------------+
| Field          | Type        |
+----------------+-------------+
| Code           | char(3)     |
| Name           | char(52)    |
| Continent      | char(50)    |
| Region         | char(26)    |
| SurfaceArea    | float(10,2) |
| IndepYear      | smallint(6) |
| Population     | int(11)     |
| LifeExpectancy | float(3,1)  |
| GNP            | float(10,2) |
| GNPOld         | float(10,2) |
| LocalName      | char(45)    |
| GovernmentForm | char(45)    |
| HeadOfState    | char(60)    |
| Capital        | int(11)     |
| Code2          | char(2)     |
+----------------+-------------+
PS: City.CountryCode and Country.Code is same key.

*/

SELECT SUM(CITY.POPULATION) FROM CITY
JOIN COUNTRY ON
CITY.COUNTRYCODE = COUNTRY.CODE AND COUNTRY.CONTINENT = 'Asia';


--second solution
SELECT SUM(CITY.POPULATION) FROM CITY, COUNTRY
WHERE 
CITY.COUNTRYCODE = COUNTRY.CODE AND COUNTRY.CONTINENT = 'Asia';
