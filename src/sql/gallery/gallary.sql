-- 갤러리 사진/영상 목록 조회

SET @room_id = 10;
SET @page = 1;
SET @offset = (@page - 1) * 12;

SET @sql_query = CONCAT(
    'SELECT file_id, file_name, file_path, created_at, is_deleted, room_id ',
    'FROM tbl_gallery ',
    'WHERE room_id = ', @room_id, 
    ' AND is_deleted = ''N'' ',
    'ORDER BY created_at DESC ',
    'LIMIT 12 OFFSET ', @offset
);

PREPARE stmt FROM @sql_query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- mariaDB에서 OFFSET에 변수를 허용하지 않아 오류 발생
-- mySQL에서는 정상 작동

-- SET @room_id = 10;
-- set @page = 1;
-- SET @offset = (@page - 1) * 12;
-- SELECT
--     gal.file_id,
--     gal.file_name,
--     gal.file_path,
--     gal.created_at,
--     gal.is_deleted,
--     gal.room_id
-- FROM
--     tbl_gallery gal
-- WHERE 
--     gal.room_id = @room_id 
--     AND gal.is_deleted = 'N'
-- ORDER BY 
--     gal.created_at DESC
-- LIMIT 12 OFFSET @offset;

-- 갤러리 사진/영상 상세 조회
SET @file_id=2;
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
SET @file_name = '단체사진.png';
SET @file_path = 'http://via.placeholder.com/480x480';
SET @room_id = 10;
SET @member_id = 89;
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

