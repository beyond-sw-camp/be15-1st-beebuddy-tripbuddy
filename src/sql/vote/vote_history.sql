-- 4. 투표 참여 
-- 4-1. 투표 항목 선택  
INSERT INTO tbl_vote_history (option_id, voter_id) 
VALUES (2, 2); 

-- 4-2. 투표 항목 변경  
-- 해당 투표에 해당 회원이 한 선택 사항을 모두 지우고 (hard delete)
START TRANSACTION ; 

DELETE vth 
from tbl_vote_history vth 
join tbl_vote_option vto
ON vth.option_id = vto.option_id
WHERE vto.vote_id = 1 AND vth.voter_id = 2;

-- 새로 한 선택 insert 
INSERT INTO tbl_vote_history (option_id, voter_id) 
VALUES (1, 2) ; 

-- 조회 쿼리 
SELECT  *
from tbl_vote_history vth 
join tbl_vote_option vto
ON vth.option_id = vto.option_id
WHERE vto.vote_id = 1;

