-- 갤러리 댓글 조회
SET @file_id = 1;
SELECT
    galc.comment_id,
    galc.comment_content,
    galc.created_at,
    galc.updated_at,
    galc.is_deleted,
    galc.file_id,
    galc.member_id,
    mem.member_name
FROM
    tbl_photo_comment galc
JOIN
    tbl_member mem ON galc.member_id = mem.member_id
WHERE
    galc.file_id = @file_id;
    AND galc.is_deleted = 'N' 
ORDER BY 
    galc.created_at ASC; 

-- 갤러리 댓글 등록
SET @file_id = 2;
SET @member_id = 1;
SET @contents = '새로운 댓글 내용';

INSERT INTO tbl_photo_comment (
    contents, 
    file_id, 
    member_id
) VALUES (
    @contents, 
    @file_id, 
    @member_id
);

-- 갤러리 댓글 수정
SET @file_id = 1;
SET @member_id = 1;
SET @contents = '수정된 댓글 내용';

UPDATE tbl_photo_comment
SET
    contents = @contents, 
    updated_at = NOW()
WHERE
    file_id = @file_id
    AND member_id = @member_id;

-- 갤러리 댓글 삭제
SET @file_id = 1;
SET @member_id = 1;

UPDATE tbl_photo_comment
SET
    is_deleted = 'Y'
WHERE
    file_id = @file_id
    AND member_id = @member_id;