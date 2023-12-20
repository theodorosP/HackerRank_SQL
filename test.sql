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
INSERT INTO People VALUES (9, 'Theo', 'Pn', 'Orlando');
INSERT INTO People VALUES (50, 'T', 'Pan', 'Orlando');
INSERT INTO People VALUES (40, 'TO', 'Pan', 'NY');
INSERT INTO People VALUES (110, 'ThO', 'n', 'Orlando');
INSERT INTO People VALUES (60, 'Th', 'Pa', 'Orlando');
INSERT INTO People VALUES (7, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (2, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (90, 'A1', 'Pan', 'Orlando');
INSERT INTO People VALUES (90, 'A2', 'Pan', 'Orlando');
INSERT INTO People VALUES (190, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (3330, 'Theo', 'Pan', 'Orlando');

DROP TABLE IF EXISTS ttt;

CREATE TABLE ttt (
    ID INT,
    FName VARCHAR(255),
    LName VARCHAR(255),
    city VARCHAR(255)
);

INSERT INTO ttt VALUES (1212, 'Theodoros', 'Pan', 'Orlando');
INSERT INTO ttt VALUES (1122, 'Aheodoros', 'Pan', 'Orlando');
INSERT INTO ttt VALUES (12121, 'Aheodoros', 'Pan', 'Orlando');
INSERT INTO ttt VALUES (9012, 'Theo', 'Pn', 'Orlando');
INSERT INTO ttt VALUES (51230, 'T', 'Pan', 'Orlando');
INSERT INTO ttt VALUES (90, 'Correct', 'Pan', 'NY');

select  FName, avg(ID) from People group by FName;
