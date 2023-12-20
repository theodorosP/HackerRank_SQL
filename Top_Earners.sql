/*
We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as space-separated integers.

The Employee table is described as follows:

+-------------+--------------+
| Column       | Type        |
+-------------+--------------+
| employee_id | Integer      |
| name        | String       |
| months      | Integer      |
| salary      | Integer      |
+-------------+--------------+

 */

SELECT (salary * months), COUNT(*) FROM Employee WHERE (salary * months) = (SELECT MAX(salary * months) from Employee) GROUP BY (salary * months);
