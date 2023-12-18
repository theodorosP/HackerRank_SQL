USE mysql;

DROP TABLE IF EXISTS Triangle;

CREATE TABLE Triangle (
    A INT,
    B INT,
    C INT
);

INSERT INTO Triangle VALUES (10, 10, 10);
INSERT INTO Triangle VALUES (10, 20, 10);
INSERT INTO Triangle VALUES (20, 10, 10);
INSERT INTO Triangle VALUES (10, 10, 20);
INSERT INTO Triangle VALUES (10, 20, 30);
INSERT INTO Triangle VALUES (20, 10, 30);


select * from Triangle;



select case 
when A = B and B = C then 'Equilateral'
when A = B or B = C or A = C then 'Isosceles'
when A + B <= C or A + C <= B or B + C <= A then 'Not A Triangle'
else 'Scalene'
end
from Triangle;
