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
 
Write a query to print the sum of LAT_N and the sum of  LONG_W separated by space, up to 2 decimal places 

Query the following two values from the STATION table:

    The sum of all values in LAT_N rounded to a scale of 

decimal places.
The sum of all values in LONG_W rounded to a scale of
decimal places.

*/


SELECT ROUND(SUM(LAT_n), 2), ROUND(SUM(LONG_W), 2) FROM STATION;
