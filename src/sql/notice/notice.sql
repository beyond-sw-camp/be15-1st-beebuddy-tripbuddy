-- 1. 회원 알림 조회
SELECT
      mnt.member_notice_id,
      nt.notice_name,
      mnt.check_status,
      mnt.notice_time
  FROM tbl_member_notice mnt
  JOIN tbl_notice nt ON mnt.notice_id = nt.notice_id 
 WHERE member_id = 37 
   AND 6 >= TIMESTAMPDIFF(month, mnt.notice_time, CURRENT_TIMESTAMP);

-- 2. 회원 알림 확인
UPDATE tbl_member_notice
   SET check_status = 'Y'
 WHERE member_id = 37 
   AND member_notice_id = 3;  


-- 3. 회원 조회 알림 삭제 
DELETE 
  FROM tbl_member_notice
 WHERE member_id = 37 
   AND member_notice_id = 1; 

-- 4. 회원 알림 등록 (cronjob 등에 의해 알림 발생 시 Insert)
INSERT INTO tbl_member_notice (member_id, notice_id, notice_time, group_id)
VALUES (37, 1, '2025-02-15 14:14:21', 7);