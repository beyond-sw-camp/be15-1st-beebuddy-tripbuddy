-- 1. 여행방 조회
SET @group_id = 1;
SET @member_id = 72;

SELECT tr.room_name
FROM tbl_trip tr
JOIN tbl_group_member gmb ON gmb.group_id = tr.group_id
JOIN tbl_member mb ON gmb.member_id = mb.member_id
WHERE tr.group_id = @group_id
  AND mb.member_id = @member_id; -- 해당 그룹의 멤버인지 체크(프로시저/함수로?)

-- 2. 여행방 생성

SET @room_name = '설정한 이름';


SET @startdate = '2024-03-27';


SET @enddate = '2024-03-29';


SET @group_id = 1;
SET @member_id = 72;


INSERT INTO tbl_trip(room_name, startdate, enddate, group_id)
VALUES (@room_name, @startdate, @enddate, @group_id);

-- 3. 여행방 제목 수정
SET @new_name = '수정한 이름';
SET @member_id = 72;
SET @room_id = 1;


UPDATE tbl_trip
SET room_name = @new_name
WHERE room_id = @room_id;
-- 그룹 멤버가 맞는지 검증

-- 4. 여행방 날짜 수정
SET @startdate = '2022-05-30';


SET @enddate = '2022-06-02';


SET @room_id = 1;
SET @member_id = 72;

UPDATE tbl_trip
SET startdate = @startdate,
    enddate = @enddate
WHERE room_id = @room_id;
-- 그룹 멤버가 맞는지 검증

-- 5. 여행방 삭제
SET @room_id = 1;

DELETE
FROM tbl_trip
WHERE room_id = @room_id;