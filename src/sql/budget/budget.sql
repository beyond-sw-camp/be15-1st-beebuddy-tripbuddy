-- 예산 DML

#### 백엔드로부터 받은 내용 ######
SET @budget_id = 1;
SET @member_id = 51;
SET @member_id2 = 25;
SET @group_id = 16;
SET @room_id = 15;
SET @category_id = 3;

SET @budget_name = '감자탕';
SET @budget_name2 = '컴포즈 커피';
SET @budget_amount = 80000;
SET @budget_amount2 = 12000;
-- 0. 공통 사항
-- (1) 권한 확인
CALL proc_isMemberExist(@member_id); -- 유저 존재 확인
CALL proc_isMemberInGroup(@member_id, @group_id); -- 그룹에 속한지 확인

#### 1. 예산 조회 ####
-- default 정렬	: 수정시간 오름차

-- 1.1. 총 예산 조회
-- 조회 내용 : 예산 총합
SELECT
	SUM(budget_amount)
FROM
	tbl_budget
WHERE room_id = @room_id;



-- 1.2. 예산 목록 조회
-- 조회 내용	: 예산 ID, 예산 제목, 예산 금액, 카테고리명
-- (1) 모두 보기
SELECT
	  bg.budget_id
	, bg.budget_name
	, bg.budget_amount
	, cg.category_name
FROM
	tbl_budget bg
JOIN
	tbl_category cg
ON
	bg.category_id = cg.category_id
WHERE
	room_id = @room_id
ORDER BY
	updated_at ASC;	

-- (2) 카테고리 별 보기
SELECT
	  bg.budget_id
	, bg.budget_name
	, bg.budget_amount
	, cg.category_name
FROM
	tbl_budget bg
LEFT JOIN
	tbl_category cg
ON
	bg.category_id = cg.category_id
WHERE
	room_id = @room_id
AND
	bg.category_id = @category_id -- 실제로는 in 형태로 동작할 수 있음
ORDER BY
	updated_at ASC;	


-- 1.3. 예산 상세 조회
-- 조회 목록: id, 제목, 금액, 작성자, 카테고리명, 수정 시간
SELECT
	  bg.budget_id
	, bg.budget_name
	, bg.budget_amount
	, mb.member_name
	, cg.category_name
	, bg.updated_at
FROM
	tbl_budget bg
JOIN
	tbl_category cg
ON
	bg.category_id = cg.category_id
JOIN
	tbl_member mb
ON
	bg.writer_id = mb.member_id
WHERE
	room_id = @room_id
ORDER BY
	updated_at ASC;

#### 2. 예산 작성 ####

INSERT INTO
	tbl_budget(budget_name, budget_amount, room_id, writer_id, category_id)
VALUES(
	  @budget_name
	, @budget_amount
	, @room_id
	, @member_id
	, @category_id
);


#### 3. 예산 수정 ####
-- 예산 수정 시, 작성자가 최종 수정자로 변경됨!
UPDATE
	tbl_budget
SET
	  budget_name = @budget_name2
	, budget_amount = @budget_amount2
	, room_id	= @room_id
	, writer_id = @member_id2
WHERE
	budget_id = @budget_id;
	


#### 4. 예산 삭제 ####
-- 예산 삭제 시, 댓글들 is deleted 'N'으로 바꾸는 트리거 필요함!

-- (1) 선택 삭제
DELETE
FROM
	tbl_budget
WHERE
	budget_id = @budget_id;
	
-- (2) 모두 삭제
DELETE
FROM
	tbl_budget
WHERE
	1=1;

#### 5. 예산 댓글 조회 ####

#### 6. 예산 댓글 수정 ####

#### 7. 예산 댓글 삭제 ####