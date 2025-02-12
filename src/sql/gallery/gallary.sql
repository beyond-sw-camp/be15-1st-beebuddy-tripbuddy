-- 갤러리 사진/영상 목록 조회
SET @room_id = 2;

SELECT
    gal.file_id,
    gal.file_name,
    gal.file_path,
    gal.created_at,
    gal.is_deleted,
    gal.room_id
FROM
    tbl_gallery gal;
WHERE 
    gal.room_id = @room_id 
    AND gal.is_deleted = 'N'
ORDER BY 
    gal.created_at DESC
LIMIT 12 OFFSET ( @page - 1 ) * 12;


-- 갤러리 사진/영상 상세 조회
SET @file_id=1;
SELECT
    gal.file_id,
    gal.file_name,
    gal.file_path,
    gal.created_at,
    gal.is_deleted,
    gal.room_id,
    gal.member_id,
    mem.member_name
FROM
    tbl_gallery gal
JOIN
    tbl_member mem ON gal.member_id = mem.member_id
WHERE
    gal.file_id = @file_id
    AND gal.is_deleted = 'N';

-- 갤러리 사진/영상 등록
SET @file_name = '새로운 파일 이름';
SET @file_path = '새로운 파일 경로';
SET @room_id = 2;
SET @member_id = 1;
INSERT INTO
    tbl_gallery (
        file_name,
        file_path,
        room_id,
        member_id
    )
VALUES (
    @file_name,
    @file_path,
    @room_id,
    @member_id
);

-- 갤러리 사진/영상 삭제
SET @file_id = 1;
SET @member_id = 2;

UPDATE tbl_gallery
SET is_deleted = 'Y'
WHERE file_id = @file_id
AND member_id = @member_id;

