/*

Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

*/
SELECT DISTINCT(CITY) FROM STATION WHERE SUBSTRING(CITY, 1, 1) NOT IN ('a', 'e', 'i', 'o', 'u') AND SUBSTRING(CITY, LENGTH(CITY), 1) NOT IN ('a', 'e', 'i', 'o', 'u')
