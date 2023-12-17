use mysql;
DROP TABLE IF EXISTS People;

CREATE TABLE People (
    ID INT,
    FName VARCHAR(255),
    LName VARCHAR(255),
    city VARCHAR(255)
);

INSERT INTO People VALUES (10, 'Theodoros', 'Pan', 'Orlando');
INSERT INTO People VALUES (11, 'Aheodoros', 'Pan', 'Orlando');
INSERT INTO People VALUES (9, 'TheO', 'Pn', 'Orlando');
INSERT INTO People VALUES (50, 'T', 'Pan', 'Orlando');
INSERT INTO People VALUES (40, 'TO', 'Pan', 'NY');
INSERT INTO People VALUES (110, 'ThO', 'n', 'Orlando');
INSERT INTO People VALUES (60, 'Th', 'Pa', 'Orlando');
INSERT INTO People VALUES (7, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (2, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (90, 'A', 'Pan', 'Orlando');
INSERT INTO People VALUES (2, 'A', 'Pan', 'Orlando');

DROP TABLE IF EXISTS new_table;

CREATE TABLE new_table (
    ID INT,
    row_index INT
);

SET @row_index := 0;
SET @size := (SELECT COUNT(ID) FROM People);

DROP PROCEDURE IF EXISTS CompareNumbers;

DELIMITER //

CREATE PROCEDURE CompareNumbers(IN num INT)
BEGIN
    DECLARE result_message VARCHAR(100);

    IF num % 2 <> 0 THEN
		SET @row_index := @row_index + 1;
        SELECT ID FROM People ORDER BY ID LIMIT 1 OFFSET @row_index;
    END IF;

END //

DELIMITER ;

CALL CompareNumbers(@size);
