-- Procedure
-- 계정 복구 회원 확인 
DROP PROCEDURE IF EXISTS checkRestoredMember;

DELIMITER //
CREATE PROCEDURE `checkRestoredMember`( 
    IN secede_at TIMESTAMP,  
    OUT result BOOLEAN 
)
BEGIN
    DECLARE today TIMESTAMP;
    DECLARE diff INT;
    SELECT CURRENT_TIMESTAMP INTO today;
    SELECT TIMESTAMPDIFF(day, secede_at, today) INTO diff; 

    IF diff <= 30 THEN
      SET result = TRUE;
    ELSE
      SET result = FALSE;
    END IF;
END //
DELIMITER ;