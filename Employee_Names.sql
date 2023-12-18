/*
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

INPUT fORMAT
+-------------+------------+
| Column       |   Type    |
+-------------+------------+
| employee_id |  INTEGER   |
| name        |  STRING    |
| months      |  INTEGER   |
| salary      |  INTEGER   |
+-------------+------------+
*/

SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME, 3), ID ASC;
