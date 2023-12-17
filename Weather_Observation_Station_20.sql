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

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

*/




set @SIZE := (SELECT COUNT(*) FROM STATION);

DROP PROCEDURE IF EXISTS EVEN_ODD;

DELIMITER // 
CREATE PROCEDURE EVEN_ODD(IN num INT)
BEGIN
    IF num % 2 <> 0 THEN
        SET @ODD := CONCAT('SELECT ROUND(LAT_N, 4) FROM STATION ORDER BY LAT_N LIMIT ', CAST( (@SIZE - 1)/2 AS SIGNED), ', 1');
    
        PREPARE ODD FROM @ODD;
        EXECUTE ODD;
        DEALLOCATE PREPARE ODD;
    ELSE
        SET @EVEN_1 := CONCAT('SELECT LAT_N AS ID1 FROM STATION ORDER BY LAT_N LIMIT ', CAST((@SIZE / 2) AS SIGNED), ', 1');
        SET @EVEN_2 := CONCAT('SELECT LAT_N AS ID2 FROM STATION ORDER BY LAT_N LIMIT ', CAST((@SIZE/2) - 1 AS SIGNED), ', 1');

        SET @EVEN := CONCAT('SELECT ROUND(SUM(ID1 + ID2)/2, 4) FROM (', @EVEN_1, ') AS SUB1, (', @EVEN_2, ') AS SUB2');

        PREPARE EVEN_1 FROM @EVEN;
        EXECUTE EVEN_1;
        DEALLOCATE PREPARE EVEN_1;
    END IF;

END //

DELIMITER ;

CALL EVEN_ODD(@SIZE);
