-- tbl_member 더미 데이터 삽입
INSERT INTO tbl_member (email, password, member_name, birthday, phone_number) VALUES
('user1@example.com', 'hashedpassword1', '김철수', '1990-01-01', '010-1234-5678'),
('user2@example.com', 'hashedpassword2', '이영희', '1992-05-15', '010-2345-6789'),
('user3@example.com', 'hashedpassword3', '박민수', '1988-07-30', '010-3456-7890');

-- tbl_group 더미 데이터 삽입
INSERT INTO tbl_group (group_name) VALUES
('여행동아리'),
('우리가좍');

-- tbl_group_role 더미 데이터 삽입
INSERT INTO tbl_group_role (role_name, role_level) VALUES
('그룹장', 1),
('그룹원', 2);

-- tbl_group_member 더미 데이터 삽입
INSERT INTO tbl_group_member (group_id, member_id, role_id, invite_accepted) VALUES
(1, 1, 1, 'Y'),
(1, 2, 2, 'Y'),
(2, 3, 1, 'Y'),
(2, 1, 2, 'Y');

-- tbl_trip 더미 데이터 삽입
INSERT INTO tbl_trip (room_name, startdate, enddate, group_id) VALUES
('강릉  여행', null, null, 1),
('유럽 투어', '2025-06-01', '2025-06-15', 2);

-- tbl_category 더미 데이터 삽입
INSERT INTO tbl_category (category_name) VALUES
('날짜'),
('숙소'),
('맛집'),
('여행지'),
('기타');

-- tbl_vote 더미 데이터 삽입
INSERT INTO tbl_vote (vote_name, startdate, enddate, 
room_id, creator_id,
category_id, selected_opts_num,
allow_duplicate_votes, allow_additional_options, allow_anonymous 
) VALUES
('여행 일정 투표', '2025-02-01', '2025-02-10', 1, 1,1,1,'Y', 'N', 'N'),
('숙소 선택 투표', '2025-02-05', '2025-02-12', 1,2,2,1,'N', 'Y', 'N'),
('맛집 선택 투표', '2025-02-06', '2025-02-10', 2,3,3,5,'Y', 'Y', 'Y');

-- tbl_vote_option 더미 데이터 삽입
INSERT INTO tbl_vote_option (vote_id, option_name, creator_id) VALUES
(1, '3월 10일 출발',1),
(1, '3월 12일 출발',1),
(2, '호텔 A',2),
(2, '호텔 B',2),
(3, '순두부',3),
(3, '짜장면',3),
(3, '피자',3);

-- tbl_vote_history 더미 데이터 삽입
INSERT INTO tbl_vote_history (option_id, voter_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2),
(3, 1),
(5, 1),
(7, 1),
(6, 3),
(7, 3);

-- tbl_cost_comment 더미 데이터 삽입
INSERT INTO tbl_vote_comment (contents, vote_id, creator_id) VALUES
('난 이틀 다 되는데', 1, 1),
('그러면 빠른 날에 투표하자', 1, 2),
('바다뷰가 좋으려나', 2, 1),
('배고파!', 3, 3);
