
SET @group_id = 1;

-- 그룹 캘린더

SELECT ps.startdate, ps.enddate, mb.member_name
FROM tbl_personal_schedule ps
JOIN tbl_member mb ON ps.member_id = mb.member_id
JOIN tbl_group_member gmb ON mb.member_id = gmb.member_id
WHERE gmb.group_id = @group_id;
-- WHERE mb.member_id IN
--     (SELECT gmb.member_id
--      FROM tbl_group_member gmb)
--   AND gmb.group_id = @group_id;
  
-- 테스트용으로 삽입
-- INSERT INTO tbl_personal_schedule(schedule_name, startdate, enddate, member_id) VALUES
-- ('d','2025-02-14','2025-02-15',6),
-- ('d','2025-02-15','2025-02-17',72),
-- ('d','2025-02-19','2025-02-20',97);