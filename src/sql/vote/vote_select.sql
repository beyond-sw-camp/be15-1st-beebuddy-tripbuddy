-- 3. 투표 조회 
-- 3-1. 투표 목록 조회 
SELECT vt.vote_id,
	vt.vote_name,
	vt.enddate, 
	vt.category_id,
	(SELECT category_name FROM tbl_category ct WHERE category_id = vt.category_id) category_name, 
	vt.is_closed,
	CASE 
        WHEN vt.is_closed = 'Y' THEN '종료'
        WHEN vt.is_closed = 'N' THEN '진행중'
    END AS vote_status_name
FROM tbl_vote vt
WHERE room_id = 1
AND is_deleted='N' -- 해당 여행방 내 투표 전체 조회 
-- AND enddate > CURRENT_TIMESTAMP; -- 진행중인 투표만 조회
-- AND category_id = 1; -- 특정 카테고리의 투표만 조회 

-- 3-2. 투표 상세 조회 
-- 3-2-1. 투표 조회 
SELECT vt.vote_id, 
	vt.vote_name, 
	vt.startdate, 
	vt.enddate, 
	vt.allow_duplicate_votes, -- 항목 여러개 선택 가능 여부에 사용 (front) 
	vt.allow_additional_options, -- 항목 추가 버튼 visible 여부 
	vt.allow_anonymous, -- 투표자 보는 화면으로 넘어가는 버튼 활성화 여부   
	vt.created_at, 
	vt.creator_id,
	vt.category_id, 
	vt.is_closed,
	CASE 
        WHEN vt.is_closed = 'Y' THEN '종료'
        WHEN vt.is_closed = 'N' THEN '진행중'
    END AS vote_status_name
FROM tbl_vote vt
WHERE vt.vote_id = 1
AND vt.is_deleted = 'N'; 

-- 3-2-2. 투표 항목 조회 
SELECT vto.option_id, 
	vto.option_name
FROM tbl_vote_option vto 
WHERE vto.vote_id = 1
AND vto.is_deleted = 'N';
 
-- 3-2-3. 투표 항목 카운트 조회  
SELECT vth.option_id, COUNT(vth.option_id) AS OPTION_CNT
FROM tbl_vote_history vth
LEFT JOIN tbl_vote_option vto 
ON vth.option_id = vto.option_id
AND  vto.vote_id = 1 
AND vto.is_deleted = 'N'
GROUP BY vth.option_id; 

-- 3-2-4. 투표 댓글 조회 
SELECT vtc.cmt_id,
vtc.contents,
vtc.creator_id,
mb.member_name, 
vtc.created_at 
FROM tbl_vote_comment vtc
LEFT JOIN tbl_member mb ON vtc.creator_id = mb.member_id
WHERE vtc.vote_id = 1
AND vtc.is_deleted = 'N';

-- 3-3. 투표자 이름 조회 (익명 투표 아닐시 클릭 버튼 활성화) 
-- 특정 항목 카운트 클릭시 ->  해당 투표자 이름 조회 
SELECT vth.option_id, vth.voter_id, mb.member_name
FROM tbl_vote_history vth
LEFT JOIN tbl_member mb ON vth.voter_id = mb.member_id
WHERE option_id = 1;  
