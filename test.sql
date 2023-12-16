USE mysql;
DROP TABLE IF EXISTS People;
CREATE TABLE People (
    ID INT,
    FName VARCHAR(255),
    LName VARCHAR(255),
    city VARCHAR(255)
);

INSERT INTO People VALUES (10, "Theodoros", "Pan", "Orlando");
INSERT INTO People VALUES (10, "Aheodoros", "Pan", "Orlando");
INSERT INTO People VALUES (20, "TheO", "Pn", "Orlando");
INSERT INTO People VALUES (30, "T", "Pan", "Orlando");
INSERT INTO People VALUES (40, "TO", "Pan", "NY");
INSERT INTO People VALUES (50, "ThO", "n", "Orlando");
INSERT INTO People VALUES (60, "Th", "Pa", "Orlando");
INSERT INTO People VALUES (30, "A", "Pan", "Orlando");
INSERT INTO People VALUES (45, "A", "Pan", "Orlando");
INSERT INTO People VALUES (46, "A", "Pan", "Orlando");
INSERT INTO People VALUES (46, "A", "Pan", "Orlando");

-- Remove unnecessary semicolon
SET @size := (SELECT COUNT(ID) FROM People);
SELECT @size;

IF @size % 2 <> 0 THEN
    SET @median := (SELECT ID FROM People LIMIT 1);
END IF;

-- Add logic to calculate or use @median if needed

SELECT @median;
