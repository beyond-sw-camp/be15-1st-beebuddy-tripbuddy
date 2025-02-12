INSERT INTO tbl_trip_details (
    category_id,
    room_id, 
    option_id, 
    detail_content, 
    custom_order, 
    visit_day, 
    is_hidden
)

VALUES 
-- 날짜 (category_id = 1)
(1, 101, NULL, '여행 날짜 확정: 2025-07-20', 1, NULL, 'Y'),
(1, 102, NULL, '일정 조정 중', 2, NULL, 'Y'),

-- 숙소 예약 (category_id = 2)
(2, 101, NULL, '서울 강남 호텔 체크인', 1, 1, 'N'),
(2, 102, NULL, '제주 오션뷰 호텔 숙박', 1, NULL, 'N'),

-- 맛집 일정 (category_id = 3)
(3, 101, NULL, '이태원 브런치 카페', 1, 2, 'N'),
(3, 101, NULL, '한강 라면 먹기', 2, NULL, 'N'),
(3, 102, NULL, '제주 흑돼지 맛집 방문', 1, 1, 'N'),

-- 여행지 방문 (category_id = 4)
(4, 101, NULL, '경복궁 투어', 1, 2, 'N'),
(4, 101, NULL, '남산 타워 야경 보기', 2, NULL, 'N'),
(4, 102, NULL, '성산일출봉 트래킹', 1, 2, 'N'),

-- 기타 (category_id = 5) 투표 결과 반영 일정 (숨김)
(5, 101, 2001, '자유 시간', 1, 3, 'Y'),
(5, 101, 2002, '미정 일정 논의', 2, NULL, 'Y');

SELECT * FROM tbl_trip WHERE room_id = 1;
SELECT * FROM tbl_category WHERE category_id = 1;
-- dt-trip_details / vto-vote_option / cg-category
-- 여행 세부 일정의 카테고리명을 포함한 데이터 조회
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
WHERE detail_id = 3;
