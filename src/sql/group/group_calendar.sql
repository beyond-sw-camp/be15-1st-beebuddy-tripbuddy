SET @group_id = 3;

-- 그룹 캘린더

SELECT ps.startdate, ps.enddate, mb.member_name
FROM tbl_personal_schedule ps
JOIN tbl_member mb ON ps.member_id = mb.member_id
JOIN tbl_group_member gmb ON mb.member_id = gmb.member_id
WHERE gmb.group_id = @group_id;