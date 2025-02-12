-- Active: 1739351231436@@127.0.0.1@3306@tripbuddy
-- 1. 회원가입

-- 1-1. Valid_아이디 중복값 check
SELECT member_id
  FROM tbl_member
WHERE email = 'user199@example.com';

-- 1-2 회원 정보 Insert
INSERT INTO  tbl_member (email, password, member_name, birthday, phone_number)
VALUES ('user200@example.com', 'hashed_password_200', '김소원', '1996-07-03', '01027527777');

-- 2. 로그인

-- 2-1. 아이디 찾기
SELECT email
  FROM tbl_member
 WHERE member_name = '김소원'
   AND phone_number = '01027527777';

-- 2-2. 비밀번호 찾기 (본인인증이 완료 -> 아이디, 이름, 전화번호 일치 시 회원 이메일로 신규 비밀번호 생성 링크 전송)
SELECT email
  FROM tbl_member
 WHERE email = 'user200@example.com'
   AND member_name = '김소원'
   AND phone_number = '01027527777';
   
-- 2-2-1. 비밀번호 변경
UPDATE tbl_member 
	SET PASSWORD = 'hashed_edit_password_200'
 WHERE email = 'user200@example.com'; 

-- 2-3. 로그인
SELECT member_id
  FROM tbl_member
 WHERE email = 'user200@example.com' 
   AND PASSWORD = 'hashed_password_200';

-- 3. 회원정보 수정 

-- 3-1. 회원정보 조회
SELECT email,
	 	 PASSWORD,
	 	 member_name,
	 	 birthday,
	 	 phone_number
  FROM tbl_member
 WHERE email = 'user200@example.com';
 
-- 3-2. 비밀번호, 휴대폰번호 수정
-- 3-2-1. 비밀번호만 수정
UPDATE tbl_member
   SET PASSWORD = 'hashed_edit_password_200'
 WHERE email = 'user200@example.com'; 
-- 3-2-2. 휴대폰번호만 수정
UPDATE tbl_member
   SET phone_number='01027527778'
 WHERE email = 'user200@example.com'; 
-- 3-2-3. 둘 다 수정
UPDATE tbl_member
   SET PASSWORD = 'hashed_edit_password_200', 
		 phone_number='01027527778'
 WHERE email = 'user200@example.com'; 

-- 3-3. 알림 설정

-- 3-3-1. 알림 설정 조회
SELECT 
       nt.notice_name
  FROM tbl_notice nt
  JOIN tbl_set_notice snt ON nt.notice_id = snt.notice_id
  JOIN tbl_member mem ON snt.member_id = mem.member_id
 WHERE mem.email = 'user200@example.com';

-- 3-3-2.  알림 off
UPDATE tbl_set_notice
   SET notice_status = 'N'
 WHERE member_id = (
                      SELECT member_id
                        FROM tbl_member
                       WHERE email = 'user200@example.com'
                    )
   AND notice_id IN (1, 2, 3, 4, 5); 
 
 -- 3-3-3.  알림 ON
UPDATE tbl_set_notice
   SET notice_status = 'Y'
 WHERE member_id = (
                      SELECT member_id
                        FROM tbl_member
                       WHERE email = 'user200@example.com'
                    )
   AND notice_id IN (1, 2, 3, 4, 5); 

  -- 4. 회원탈퇴 
  -- 4.1 회원 그룹권한 확인
  -- 회원이 속한 그룹 중 그 권한이 그룹장인 경우에는 탈퇴가 불가능하다. 
  SELECT COUNT(member_id)
    FROM tbl_group_member
   WHERE member_id = 2
     AND role_id = 1;
-- 4.2 회원 탈퇴
  UPDATE tbl_member
     SET is_deleted = 'N'
   WHERE member_id = 1  
