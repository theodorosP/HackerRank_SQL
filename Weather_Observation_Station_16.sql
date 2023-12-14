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

Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to decimal places.
*/
SELECT ROUND(MIN(LAT_N), 4) FROM STATION WHERE LAT_N > 38.7780
