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

Consider P1(a,c) and P2(b, d) to be two points on a 2D plane where (a, b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c, d)
are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points
and and format your answer to display 4 decimal digits.

Input Format

*/

SELECT ROUND(SQRT(POW(MIN(LAT_N) - MAX(LAT_N) ,2) + POW(MIN(LONG_W) - MAX(LONG_W) ,2)) , 4) FROM STATION
