-- 5. 투표 종료 처리 
-- 투표가 종료 처리 되는 케이스 
-- (1) 사용자가 투표상세조회에서 종료처리 버튼을 누르는 경우 
-- (2) 투표종료일시를 설정해 놓은 경우 스케쥴러를 통해 해당 쿼리가 실행됨 

-- 5-1. 투표 테이블 업데이트 
UPDATE tbl_vote vt 
SET vt.is_closed = 'Y'
WHERE vt.vote_id = 1; 
-- AND vt.is_deleted = 'N';
 
-- 5-2. 여행 상세정보 테이블 is_hidden 변경 
-- 5-2-1. 해당 투표의 selected_opts_num 값 가져오기 
SELECT selected_opts_num 
FROM tbl_vote 
WHERE vote_id = 1;

-- 5-2-2. is_hidden 변경할 option_id 받아오기 
SELECT vth.option_id, COUNT(vth.option_id) AS OPTION_CNT
FROM tbl_vote_history vth
LEFT JOIN tbl_vote_option vto ON vth.option_id = vto.option_id 
WHERE vto.vote_id = 1 
GROUP BY vth.option_id
ORDER BY OPTION_CNT DESC
LIMIT 1 ; -- 5-2-1 쿼리의 selected_opts_num 값이 limit 옆에 들어감  

-- 5-2-3. tbl_trip_details is_hidden 값 update 
UPDATE tbl_trip_details
SET is_hidden = 'N'
WHERE option_id = 1 ;  -- 5-2-2 쿼리에서 나온 option_id 값이 들어감  

