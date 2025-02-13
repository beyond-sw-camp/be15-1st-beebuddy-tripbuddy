-- Procedure
-- 계정 복구 회원 확인 
DROP PROCEDURE IF EXISTS proc_checkRestoredMember;
DROP PROCEDURE IF EXISTS proc_insertTblSetNotice;

DELIMITER //
CREATE PROCEDURE `proc_checkRestoredMember`( 
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

DELIMITER //
CREATE PROCEDURE `proc_insertTblSetNotice`( 
    IN memberid INT
)
BEGIN
    
    DECLARE nt_count INT;
    DECLARE count INT;

    SELECT COUNT(notice_id) INTO nt_count
      FROM tbl_notice;

    SET count = 1;

    while count <= nt_count DO
    INSERT INTO tbl_set_notice(member_id, notice_id)
    VALUES (memberid, count);
    SET count = count + 1;
    END WHILE;

END //
DELIMITER ;