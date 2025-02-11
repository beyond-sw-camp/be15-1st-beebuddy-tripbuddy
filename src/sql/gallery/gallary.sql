-- 갤러리 사진/영상 목록 조회
SELECT
    gal.file_id,
    gal.file_name,
    gal.file_path,
    gal.created_at,
    gal.is_deleted,
    gal.room_id,
    gal.member_id
FROM
    tbl_gallery gal;

-- 갤러리 사진/영상 조회
SELECT
    gal.file_id,
    gal.file_name,
    gal.file_path,
    gal.created_at,
    gal.is_deleted,
    gal.room_id,
    gal.member_id
FROM
    tbl_gallery gal
WHERE
    file_id = 1;

-- 갤러리 사진/영상 등록
INSERT INTO
    tbl_gallery (
        file_name,
        file_path,
        created_at,
        room_id,
        member_id
    )
SELECT
    '새로운 파일 이름',
    '새로운 파일 경로',
    NOW (),
    trip.room_id,
    mem.member_id
FROM
    tbl_trip trip,
    tbl_member mem
WHERE
    trip.room_id = 1
    AND mem.member_id = 2;

-- 갤러리 사진/영상 삭제
UPDATE tbl_gallery
SET
    is_deleted = TRUE
WHERE
    file_id = 1
    AND member_id = 2;

-- 갤러리 댓글 조회
SELECT
    galc.comment_id,
    galc.comment_content,
    galc.created_at,
    galc.updated_at,
    galc.is_deleted,
    galc.file_id,
    galc.member_id
FROM
    tbl_photo_comment galc
WHERE
    galc.file_id = 1;

-- 갤러리 댓글 등록
INSERT INTO
    tbl_photo_comment (
        comment_content,
        created_at,
        updated_at,
        file_id,
        member_id
    )
SELECT
    '댓글 내용',
    NOW (),
    NOW (),
    gal.file_id,
    mem.member_id
FROM
    tbl_gallery gal,
    tbl_member mem
WHERE
    gal.file_id = 1
    AND mem.member_id = 1;

-- 갤러리 댓글 수정
UPDATE tbl_photo_comment
SET
    comment_content = '수정된 댓글 내용',
    updated_at = NOW ()
WHERE
    file_id = 1
    AND member_id = 1;

-- 갤러리 댓글 삭제
UPDATE tbl_photo_comment
SET
    is_deleted = TRUE
WHERE
    file_id = 1
    AND member_id = 1;

-- 왜 member_id까지 했더라? 이유거 있엇던 것 같으넫...