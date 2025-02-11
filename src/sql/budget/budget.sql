-- 예산 DML

-- 1. 예산 조회

-- 1.1. 총 예산 조회

-- (1) 조회하려는 유저가 활성화 상태인지 확인

SELECT
	SUM(budget_amount)
FROM
	tbl_budget
JOIN
	tbl_member	mb
ON
	mb



-- 1.2. 예산 목록 조회


-- 1.3. 예산 상세 조회


-- 2. 예산 작성

-- 3. 예산 수정

-- 4. 예산 삭제

-- 5. 예산 댓글 조회

-- 6. 예산 댓글 수정

-- 7. 예산 댓글 삭제