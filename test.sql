USE mysql;

DROP TABLE IF EXISTS People;

CREATE TABLE People (
    ID INT,
    FName VARCHAR(255),
    LName VARCHAR(255),
    city VARCHAR(255)
);

INSERT INTO People VALUES (100, 'Theodoros', 'Pan', 'Orlando');
INSERT INTO People VALUES (11, 'Aheodoros', 'Pan', 'Orlando');
INSERT INTO People VALUES (12, 'Aheodoros', 'Pan', 'Orlando');
INSERT INTO People VALUES (9, 'TheO', 'Pn', 'Orlando');
INSERT INTO People VALUES (50, 'T', 'Pan', 'Orlando');
INSERT INTO People VALUES (40, 'TO', 'Pan', 'NY');
INSERT INTO People VALUES (110, 'ThO', 'n', 'Orlando');
INSERT INTO People VALUES (60, 'Th', 'Pa', 'Orlando');
INSERT INTO People VALUES (7, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (2, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (90, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (90, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (190, 'A', 'Pan', 'Orlando');


select avg(ID) from People;
select avg(ID) - avg( replace(ID, 0, '') ) from People;

