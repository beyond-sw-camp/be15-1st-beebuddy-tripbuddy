INSERT INTO tbl_trip_details (
    category_id,
    room_id, 
    option_id, 
    detail_content, 
    custom_order, 
    visit_day, 
    is_hidden
)

-- 여행 일정 조회
SELECT
    dt.detail_id,
    dt.room_id,
    cg.category_name,
    dt.detail_content,
    dt.custom_order,
    dt.visit_day,
    dt.is_hidden
FROM tbl_trip_details dt
JOIN tbl_category cg ON dt.category_id = cg.category_id
ORDER BY dt.room_id, dt.custom_order;

-- 여행 일정 수정
UPDATE tbl_trip_details 
SET visit_day = 2
WHERE detail_id = 5;

-- 여행 일정 삭제
DELETE FROM tbl_trip_details
WHERE detail_id = 4;