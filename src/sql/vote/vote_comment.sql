-- 6. 투표 댓글 
-- 6-1. 투표 댓글 작성
INSERT INTO tbl_vote_comment (CONTENTS, vote_id, creator_id)
VALUES ('난 이틀 다 되는데', 1, 1),
       ('그러면 빠른 날에 투표하자', 1, 2),
       ('바다뷰가 좋으려나', 2, 1),
       ('배고파!', 3, 3);

-- 6-2. 투표 댓글 수정 
UPDATE tbl_vote_comment 
SET contents = '호수뷰가 좋으려나' 
WHERE cmt_id = 3;

-- 6-3. 투표 댓글 삭제
UPDATE tbl_vote_comment 
SET is_deleted = 'Y'
WHERE cmt_id = 3;
 
-- 6-4. 투표 댓글 조회 
SELECT vtc.cmt_id,
vtc.contents,
vtc.creator_id,
mb.member_name, 
vtc.created_at 
FROM tbl_vote_comment vtc
LEFT JOIN tbl_member mb ON vtc.creator_id = mb.member_id
WHERE vtc.vote_id = 2
AND vtc.is_deleted = 'N';
