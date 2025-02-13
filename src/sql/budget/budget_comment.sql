
SET @comment_id = 

CALL proc_isMemberExist(@member_id); -- 유저 존재 확인
CALL proc_isMemberInGroup(@member_id, @group_id); -- 그룹에 속한지 확인


#### 5. 예산 댓글 조회 ####
SELECT
	bgc.comment_id
	, bgc.contents
	, bgc.created_at
	, bgc.updated_at
	, mem.member_name
FROM
	tbl_budget_comment bgc
JOIN
	tbl_member mem
ON
	bgc.writer_id=mem.member_id
WHERE
	bgc.budget_id = @budget_id;


#### 6. 예산 댓글 수정 ####
UPDATE
	tbl_budget_comment
SET
	contents=@contents
WHERE
	writer_id = @member_id; -- 작성자만 수정 가능

#### 7. 예산 댓글 삭제 ####
UPDATE
	tbl_budget_comment
SET
	is_deleted='Y';
WHERE
	writerId = @member_id;