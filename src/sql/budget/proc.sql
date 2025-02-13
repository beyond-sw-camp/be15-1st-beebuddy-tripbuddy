# 회원 존재 여부 확인
-- 아이디가 테이블에 없는 경우
-- 있어도 is_deleted = 'Y'인 경우
DELIMITER //

CREATE OR REPLACE PROCEDURE proc_isMemberExist(
	IN	target_member_id INT
)
BEGIN
	DECLARE member_not_found CONDITION FOR SQLSTATE '45000';
	DECLARE count_member INT;
	
	DECLARE EXIT HANDLER FOR member_not_found
	BEGIN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '존재하지 않는 유저입니다.';
	END;
	
	SELECT
		COUNT(*) INTO count_member
	FROM 
		tbl_member
	WHERE member_id = target_member_id AND is_deleted = 'N';
	
	IF count_member = 0 THEN
		SIGNAL member_not_found;
	END IF;

END //

DELIMITER ;

 #테스트용
 -- CALL proc_isMemberExist(999);
 
# 회원 그룹원 여부 확인
-- pk를 통해 존재 확인
-- 존재한다면 초대상태가 'y'여야 함

DELIMITER //

CREATE OR REPLACE PROCEDURE proc_isMemberInGroup(
	IN	target_member_id INT,
	IN target_group_id INT
)
BEGIN
	DECLARE member_not_in_group CONDITION FOR SQLSTATE '45000';
	DECLARE count_member INT;
	
	DECLARE EXIT HANDLER FOR member_not_in_group
	BEGIN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '그룹에 접근할 수 없습니다.';
	END;
	
	SELECT
		COUNT(*) INTO count_member
	FROM 
		tbl_group_member
	WHERE member_id = target_member_id 
	AND group_id = target_group_id -- pk용
	AND invite_accepted = 'Y'; -- 초대에 응한 상태일 경우
	
	IF count_member = 0 THEN
		SIGNAL member_not_in_group;
	END IF;
	
END // 

DELIMITER ;
 
 
 