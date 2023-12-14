/*
Query all columns for all American cities in CITY with populations larger than 100,000. The CountryCode for America is USA.

Input Format

The STATION table is described as follows:

+-------------+--------------+
| Field       | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |
+-------------+--------------+
Query a list of CITY and STATE from the STATION table. 
 */

SELECT CITY, STATE from STATION;
