-- 2. 투표 수정, 삭제 

-- 2-1. 투표 수정 
-- 아무도 해당 투표에 참여하지 않은 경우에만 투표 테이블 데이터 수정 가능
-- 투표 카테고리 컬럼, 투표 항목 테이블은  수정 불가능 (tbl_trip_details 테이블과 데이터 정합성 깨지는 것 차단) 

-- vote history 개수 조회
SELECT COUNT(*)
FROM tbl_vote_history vth
JOIN tbl_vote_option vto USING (option_id)
WHERE vto.vote_id = 1
  AND is_deleted = 'N';
  
-- 0인 경우에 투표 테이블 수정 가능  
UPDATE tbl_vote SET 
vote_name = '여행 일정 투표 수정', --투표 이름 수정 
startdate = '2025-02-02', 
enddate = '2025-02-13', -- 끝나는 날짜 수정  
category_id = 1, 
selected_opts_num = 1, 
allow_duplicate_votes = 'Y', 
allow_additional_options = 'Y', -- 'N'에서 'Y'로 수정
allow_anonymous = 'N'
WHERE vote_id = 1 
  AND is_deleted = 'N';

-- 2-2. 투표 삭제 
UPDATE tbl_vote SET 
is_deleted = 'Y'
WHERE vote_id = 1 
  AND is_deleted = 'N';
  

  
