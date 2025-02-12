
SET @comment_id = 

CALL proc_isMemberExist(@member_id); -- 유저 존재 확인
CALL proc_isMemberInGroup(@member_id, @group_id); -- 그룹에 속한지 확인


#### 5. 예산 댓글 조회 ####
SELECT
	comment_id
	, contents
	, created_at
	, updated_at
	, writer_id
FROM
	tbl_budget_comment
WHERE
	comment_id = @comment_id;


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