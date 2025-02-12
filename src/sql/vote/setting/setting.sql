-- 1. root로그인 -> 계정 생성 
CREATE USER 'beebuddy'@'%' IDENTIFIED BY 'beebuddy';

SELECT * FROM mysql.USER; 

-- 2. DB 생성 
CREATE DATABASE tripbuddy;

SHOW DATABASES;

-- 3. 계정에 DB에 대한 모든 권한 부여 (관리자) 
GRANT ALL PRIVILEGES ON tripbuddy.* TO 'beebuddy'@'%';

SHOW GRANTS FOR 'beebuddy'@'%';
