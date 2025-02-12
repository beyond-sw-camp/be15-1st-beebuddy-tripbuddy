-- 3. 투표 조회 
-- 3-1. 투표 목록 조회 
SELECT * FROM tbl_vote
WHERE room_id = 1
AND is_deleted='N' -- 해당 여행방 내 투표 전체 조회 
-- AND enddate > CURRENT_TIMESTAMP; -- 진행중인 투표만 조회
-- AND category_id = 1; -- 특정 카테고리의 투표만 조회 

-- 3-2. 투표 상세 조회 -> 미완~!!
-- 투표, 투표 항목, 항목 선택 정보
-- SELECT vt.vote_id, 
-- vt.vote_name, 
-- vt.startdate, 
-- vt.enddate, 
-- vt.allow_duplicate_votes, 
-- vt.allow_additional_options, 
-- vt.allow_anonymous, 
-- vt.created_at, 
-- -- vt.updated_at, 
-- vt.creator_id,
-- vt.category_id,
-- vto.option_id, 
-- vto.option_name,
-- vto.created_at,
-- -- vto.updated_at,
-- -- vto.is_deleted, -- 이 조건도 따져야하는뎁 
--   FROM tbl_vote vt 
-- JOIN tbl_vote_option vto USING(vote_id)
-- JOIN tbl_vote_history vth USING (option_id)
-- -- GROUP BY로 투표수 항목도 카운트해야함  
-- WHERE vote_id = 1
-- AND vo.is_deleted='N' ; 

-- 항목 추가 버튼 visible 조건 체크
SELECT allow_additional_options 
FROM tbl_vote
WHERE vote_id = 1;
