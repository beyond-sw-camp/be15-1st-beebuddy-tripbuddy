-- 1. 개인 일정 조회
SELECT
       ps_id,
       schedule_name,
       startdate,
       enddate
  FROM tbl_personal_schedule
 WHERE member_id = 37;

-- 2. 그룹 일정 조회 
SELECT  DISTINCT
        tr.room_id,
        gr.group_name,
        tr.startdate,
        tr.enddate
  FROM tbl_member mem
  JOIN tbl_group_member gmb ON mem.member_id = gmb.member_id
  JOIN tbl_group gr ON gmb.group_id = gr.group_id
  JOIN tbl_trip tr ON gr.group_id = tr.group_id
 WHERE mem.member_id = 37
   AND gr.group_id IN (3, 7);

-- 3. 개인 일정 등록 
INSERT INTO tbl_personal_schedule(schedule_name, startdate, enddate, member_id)
VALUES
('개인일정','2025-05-02',NULL,37);

-- 4. 개인 일정 삭제
DELETE 
  FROM tbl_personal_schedule
 WHERE member_id = 37 -- 멤버아이디
   AND ps_id = 8; -- personal_schedule id