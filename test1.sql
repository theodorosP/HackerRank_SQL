USE mysql;

DROP TABLE IF EXISTS People;

CREATE TABLE People (
    ID INT,
    FName VARCHAR(255),
    LName VARCHAR(255),
    city VARCHAR(255)
);

INSERT INTO People VALUES (10, 'Theodoros', 'Pan', 'Orlando');
INSERT INTO People VALUES (11, 'Aheodoros', 'Pan', 'Orlando');
INSERT INTO People VALUES (20, 'TheO', 'Pn', 'Orlando');
INSERT INTO People VALUES (30, 'T', 'Pan', 'Orlando');
INSERT INTO People VALUES (40, 'TO', 'Pan', 'NY');
INSERT INTO People VALUES (50, 'ThO', 'n', 'Orlando');
INSERT INTO People VALUES (60, 'Th', 'Pa', 'Orlando');
INSERT INTO People VALUES (70, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (80, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (90, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (100, 'A', 'Pan', 'Orlando');

SET @size := (SELECT COUNT(ID) FROM People);
SELECT @size;

SET @size := (SELECT COUNT(ID) FROM People);

set @test =10;

select ID from People where ID = @test;

/*
select ID from People limit (select @size -1), 1;
*/

SELECT
  CASE
    WHEN @size % 2 <> 0 THEN 'test'
    ELSE NULL
  END AS median;

