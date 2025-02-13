-- 1. 투표 생성

-- 1-1. 투표 생성
-- tbl_vote INSERT 
INSERT INTO tbl_vote (vote_name, startdate, enddate, room_id, creator_id, category_id, selected_opts_num, allow_duplicate_votes, allow_additional_options, allow_anonymous)
VALUES ('여행 일정 투표', '2025-02-01', '2025-02-10', 1, 1, 1, 1, 'Y', 'N', 'N');

-- 1-2. 투표 항목 생성 
-- 투표 항목이 생성 되는 경우
-- 1. 투표 생성시, 투표 항목을 최소 2개 이상 작성하도록 규칙 지정되어있음
-- 2. allow_additional_options = 'Y'인 투표의 경우, 투표 생성 이후에도 투표 여행방 내 모든 회원이 투표 항목을 추가할 수 있음

-- 1-2-1)  tbl_vote_option INSERT 
INSERT INTO tbl_vote_option (vote_id, option_name, creator_id)
VALUES (1, '3월 10일 출발', 1),
       (1, '3월 12일 출발', 1);

-- 1-2-2) tbl_trip_details INSERT
INSERT INTO tbl_trip_details (category_id, room_id, option_id, detail_content, custom_order, visit_day, is_hidden)
VALUES (1, 1, 1, '3월 10일 출발', 1, NULL, 'Y'),
       (1, 1, 2, '3월 12일 출발', 2, NULL, 'Y');

-- 1-2-3) tbl_trip_details INSERT를 위해 필요한 데이터 SELECT 
-- 1. custom_order=NULL: front에서 받아와야한다. 
-- 2. visit_day=NULL: 추후 사용자가 여행방 내에서 visit_day를 설정하면 값이 채워진다.
-- 3. is_hidden='Y': 아직 선정된 항목이 아니기 때문에 화면에 보이지 않는다.   
-- 4. category_id, room_id, option_id, detail_content 데이터 값 가져오는 쿼리 
SELECT vt.category_id, vt.room_id, vto.option_id, vto.option_name FROM tbl_vote_option vto 
JOIN tbl_vote vt
USING (vote_id)
WHERE vote_id = 1;
  

  
