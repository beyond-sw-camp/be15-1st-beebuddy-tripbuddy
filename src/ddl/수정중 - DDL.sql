
DROP TABLE IF EXISTS `tbl_budget_comment`;
DROP TABLE IF EXISTS `tbl_cost_comment`;
DROP TABLE IF EXISTS `tbl_vote_history`;
DROP TABLE IF EXISTS `tbl_vote_comment`;
DROP TABLE IF EXISTS `tbl_photo_comment`;
DROP TABLE IF EXISTS `tbl_member_notice`;
DROP TABLE IF EXISTS `tbl_personal_schedule`;
DROP TABLE IF EXISTS `tbl_set_notice`;
DROP TABLE IF EXISTS `tbl_group_member`;
DROP TABLE IF EXISTS `tbl_cost_history`;
DROP TABLE IF EXISTS `tbl_trip_details`;
DROP TABLE IF EXISTS `tbl_vote_option`;
DROP TABLE IF EXISTS `tbl_budget`;
DROP TABLE IF EXISTS `tbl_gallery`;
DROP TABLE IF EXISTS `tbl_cost`;
DROP TABLE IF EXISTS `tbl_vote`;
DROP TABLE IF EXISTS `tbl_trip`;
DROP TABLE IF EXISTS `tbl_group`;
DROP TABLE IF EXISTS `tbl_category`;
DROP TABLE IF EXISTS `tbl_notice`;
DROP TABLE IF EXISTS `tbl_member`;
DROP TABLE IF EXISTS `tbl_group_role`;


CREATE TABLE `tbl_vote_history` (
	`voter_id`	INT	NOT NULL,
	`option_id`	INT	NOT NULL,
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE `tbl_trip` (
	`room_id`	INT	NOT NULL	COMMENT '여행방ID',
	`room_name`	VARCHAR(255)	NOT NULL	COMMENT '여행방이름',
	`startdate`	DATE	NULL	COMMENT '여행시작일',
	`enddate`	DATE	NULL	COMMENT '여행종료일',
	`group_id`	INT	NOT NULL	COMMENT '그룹ID'
);

CREATE TABLE `tbl_vote_comment` (
	`cmt_id`	INT	NOT NULL	COMMENT 'AUTO_INCREMENT',
	`creator_id`	INT	NOT NULL,
	`contents`	VARCHAR(200)	NOT NULL,
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT 'ON UPDATE CURRENT_TIMESTAMP',
	`is_deleted`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N',
	`vote_id`	INT	NOT NULL
);

CREATE TABLE `tbl_budget` (
	`budget_id`	INT	NOT NULL	COMMENT '예산 ID',
	`budget_name`	VARCHAR(50)	NOT NULL	COMMENT '예산 제목',
	`budget_amount`	DECIMAL(10, 2)	NOT NULL	COMMENT '예산 금액',
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '작성 시간',
	`updated_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '수정 시간',
	`room_id`	INT	NOT NULL	COMMENT '여행방 ID',
	`writer_id`	INT	NOT NULL	COMMENT '최종편집자',
	`category_id`	INT	NOT NULL	COMMENT '카테고리 ID'
);


CREATE TABLE `tbl_gallery` (
	`file_id`	INT	NOT NULL	COMMENT '파일ID',
	`file_name`	VARCHAR(255)	NOT NULL	COMMENT '파일명',
	`file_path`	VARCHAR(255)	NOT NULL	COMMENT '파일경로',
	`room_id`	INT	NOT NULL	COMMENT '여행방ID',
	`member_id`	INT	NOT NULL	COMMENT '등록자ID',
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '등록시간',
	`is_deleted`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N'	COMMENT '삭제여부'
);


CREATE TABLE `tbl_vote_option` (
	`option_id`	INT	NOT NULL	COMMENT 'AUTO_INCREMENT',
	`option_name`	VARCHAR(50)	NOT NULL,
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT 'ON UPDATE CURRENT_TIMESTAMP',
	`is_deleted`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N',
	`vote_id`	INT	NOT NULL,
	`creator_id`	INT	NOT NULL
);


CREATE TABLE `tbl_group_role` (
	`role_id`	INT	NOT NULL	COMMENT '권한ID',
	`role_name`	VARCHAR(10)	NOT NULL	COMMENT '권한이름',
	`role_level`	INT	NOT NULL	COMMENT '권한레벨'
);

CREATE TABLE `tbl_cost_comment` (
	`comment_id`	INT	NOT NULL	COMMENT '댓글 ID',
	`contents`	VARCHAR(200)	NOT NULL	COMMENT '댓글 내용',
	`updated_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '수정 시간',
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '작성 시간',
	`is_deleted`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N'	COMMENT '삭제 여부',
	`cost_id`	INT	NOT NULL	COMMENT '비용 ID',
	`member_id`	INT	NOT NULL	COMMENT '회원 ID'
);


CREATE TABLE `tbl_member_notice` (
	`member_notice_id`	INT	NOT NULL,
	`member_id`	INT	NOT NULL,
	`notice_id`	INT	NOT NULL,
	`check_status`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N'	COMMENT '회원 알림 읽음 여부',
	`notice_time`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '알림 시간',
	`group_id`	INT	NOT NULL
);

CREATE TABLE `tbl_group` (
	`group_id`	INT	NOT NULL	COMMENT '그룹ID',
	`group_name`	VARCHAR(100)	NOT NULL	COMMENT '그룹 이름',
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '그룹 생성일시'
);

CREATE TABLE `tbl_budget_comment` (
	`comment_id`	INT	NOT NULL	COMMENT '댓글 ID',
	`contents`	VARCHAR(200)	NOT NULL	COMMENT '댓글 내용',
	`updated_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '수정 시간',
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '작성 시간',
	`is_deleted`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N'	COMMENT '삭제 여부',
	`budget_id`	INT	NOT NULL	COMMENT '예산 ID',
	`writer_id`	INT	NOT NULL	COMMENT '작성자 ID'
);


CREATE TABLE `tbl_category` (
	`category_id`	INT	NOT NULL	COMMENT '카테고리 ID',
	`category_name`	VARCHAR(10)	NOT NULL	COMMENT '카테고리 명'
);

CREATE TABLE `tbl_trip_details` (
	`detail_id`	INT	NOT NULL	COMMENT 'AUTO_INCREMENT',
	`category_id`	INT	NOT NULL,
	`room_id`	INT	NOT NULL,
	`option_id`	INT	NULL	COMMENT 'AUTO_INCREMENT',
	`detail_content`	VARCHAR(50)	NOT NULL,
	`custom_order`	INT	NOT NULL,
	`visit_day`	INT	NULL,
	`is_hidden`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N'
);

CREATE TABLE `tbl_member` (
`member_id`	INT NOT NULL,
`email`	CHAR(30)	NOT NULL	COMMENT '로그인 ID',
`password`	VARCHAR(255)	NOT NULL	COMMENT '암호화된 비밀번호',
`member_name`	VARCHAR(255)	NOT NULL	COMMENT '회원 이름',
`birthday`	DATE	NOT NULL	COMMENT '회원 생년월일',
`phone_number`	VARCHAR(30)	NOT NULL	COMMENT '회원 전화번호',
`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP COMMENT'회원 가입일',
`updated_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP 
 ON UPDATE CURRENT_TIMESTAMP COMMENT '회원정보 수정일',
`is_deleted`	ENUM('Y', 'N') NOT NULL DEFAULT 'N' COMMENT '회원 탈퇴 여부'
);

ALTER TABLE `tbl_member` MODIFY member_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;


CREATE TABLE `tbl_cost` (
	`cost_id`	INT	NOT NULL	COMMENT '비용 ID',
	`cost_amount`	DECIMAL(10, 2)	NOT NULL	DEFAULT 0	COMMENT '비용 금액',
	`cost_name`	VARCHAR(50)	NOT NULL	COMMENT '비용 제목',
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '등록 시간',
	`cost_split_amount`	DECIMAL(10, 2)	NOT NULL	DEFAULT 0	COMMENT '개인 정산 금액',
	`room_id`	INT	NOT NULL	COMMENT '여행방 ID',
	`category_id`	INT	NOT NULL	COMMENT '카테고리 ID',
	`writer_id`	INT	NOT NULL	COMMENT '최종 편집자',
	`payer_id`	INT	NOT NULL	COMMENT '결제자 ID',
	`cost_sharer_id`	INT	NOT NULL	COMMENT '정산 대상자 ID'
);

CREATE TABLE `tbl_notice` (
	`notice_id`	INT	NOT NULL,
	`notice_name`	VARCHAR(20)	NOT NULL	COMMENT '알림 이름'
);

CREATE TABLE `tbl_photo_comment` (
	`comment_id`	INT	NOT NULL	COMMENT '댓글ID',
	`contents`	VARCHAR(200)	NOT NULL	COMMENT '댓글내용',
	`file_id`	INT	NOT NULL	COMMENT '파일ID',
	`member_id`	INT	NOT NULL	COMMENT '작성자ID',
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '작성시간',
	`updated_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '수정시간',
	`is_deleted`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N'	COMMENT '삭제여부'
);

CREATE TABLE `tbl_vote` (
	`vote_id`	INT	NOT NULL	COMMENT 'AUTO_INCREMENT',
	`vote_name`	VARCHAR(50)	NOT NULL,
	`startdate`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
	`enddate`	TIMESTAMP	NULL,
	`allow_duplicate_votes`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N',
	`allow_additional_options`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N',
	`allow_anonymous`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N',
	`created_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT 'ON UPDATE CURRENT_TIMESTAMP',
	`is_deleted`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N',
	`room_id`	INT	NOT NULL,
	`creator_id`	INT	NOT NULL,
	`category_id`	INT	NOT NULL,
	`selected_opts_num`	INT	NOT NULL
);

CREATE TABLE `tbl_personal_schedule` (
	`ps_id`	INT	NOT NULL,
	`schedule_name`	VARCHAR(20)	NOT NULL	COMMENT '개인 일정 제목',
	`startdate`	DATE	NOT NULL	COMMENT '개인 일정 시작일',
	`enddate`	DATE	NULL	COMMENT '개인 일정 종료일',
	`member_id`	INT	NOT NULL
);

CREATE TABLE `tbl_set_notice` (
	`member_id`	INT	NOT NULL,
	`notice_id`	INT	NOT NULL,
	`notice_status`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'Y'	COMMENT '회원별 알림 여부'
);

CREATE TABLE `tbl_group_member` (
	`group_id`	INT	NOT NULL	COMMENT '그룹ID',
	`member_id`	INT	NOT NULL	COMMENT '회원ID',
	`role_id`	INT	NOT NULL	COMMENT '권한ID',
	`invite_status`	ENUM('Y', 'N')	NOT NULL	DEFAULT 'N'	COMMENT '초대 상태'
);

CREATE TABLE `tbl_cost_history` (
	`cost_history_id`	INT	NOT NULL	COMMENT '히스토리 ID',
	`history_type`	ENUM('UPDATED', 'CREATED', 'DELETED')	NOT NULL	COMMENT '변경  유형',
	`updated_at`	TIMESTAMP	NOT NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '수정시간',
	`cost_amount`	DECIMAL(10, 2)	NOT NULL	DEFAULT 0	COMMENT '비용 금액',
	`cost_name`	VARCHAR(50)	NULL	COMMENT '비용 제목',
	`cost_split_amount`	DECIMAL(10, 2)	NOT NULL	DEFAULT 0	COMMENT '개인 정산 금액',
	`writer_id`	INT	NOT NULL	COMMENT '작성자 IUD',
	`category_id`	INT	NOT NULL	COMMENT '카테고리 ID',
	`payer_id`	INT	NOT NULL	COMMENT '결제자 ID',
	`room_id`	INT	NOT NULL	COMMENT '여행방 ID',
	`cost_sharer_id`	INT	NOT NULL	COMMENT '정산 대상자 ID',
	`cost_id`	INT	NULL	COMMENT '비용 ID'
);

ALTER TABLE `tbl_vote_history` ADD CONSTRAINT `PK_TBL_VOTE_HISTORY` PRIMARY KEY (
	`voter_id`,
	`option_id`
);

ALTER TABLE `tbl_trip` ADD CONSTRAINT `PK_TBL_TRIP` PRIMARY KEY (
	`room_id`
);

ALTER TABLE `tbl_vote_comment` ADD CONSTRAINT `PK_TBL_VOTE_COMMENT` PRIMARY KEY (
	`cmt_id`
);

ALTER TABLE `tbl_budget` ADD CONSTRAINT `PK_TBL_BUDGET` PRIMARY KEY (
	`budget_id`
);

ALTER TABLE `tbl_gallery` ADD CONSTRAINT `PK_TBL_GALLERY` PRIMARY KEY (
	`file_id`
);

ALTER TABLE `tbl_vote_option` ADD CONSTRAINT `PK_TBL_VOTE_OPTION` PRIMARY KEY (
	`option_id`
);

ALTER TABLE `tbl_group_role` ADD CONSTRAINT `PK_TBL_GROUP_ROLE` PRIMARY KEY (
	`role_id`
);

ALTER TABLE `tbl_cost_comment` ADD CONSTRAINT `PK_TBL_COST_COMMENT` PRIMARY KEY (
	`comment_id`
);

ALTER TABLE `tbl_member_notice` ADD CONSTRAINT `PK_TBL_MEMBER_NOTICE` PRIMARY KEY (
	`member_notice_id`
);

ALTER TABLE `tbl_group` ADD CONSTRAINT `PK_TBL_GROUP` PRIMARY KEY (
	`group_id`
);

ALTER TABLE `tbl_budget_comment` ADD CONSTRAINT `PK_TBL_BUDGET_COMMENT` PRIMARY KEY (
	`comment_id`
);

ALTER TABLE `tbl_category` ADD CONSTRAINT `PK_TBL_CATEGORY` PRIMARY KEY (
	`category_id`
);

ALTER TABLE `tbl_trip_details` ADD CONSTRAINT `PK_TBL_TRIP_DETAILS` PRIMARY KEY (
	`detail_id`
);


ALTER TABLE `tbl_cost` ADD CONSTRAINT `PK_TBL_COST` PRIMARY KEY (
	`cost_id`
);

ALTER TABLE `tbl_notice` ADD CONSTRAINT `PK_TBL_NOTICE` PRIMARY KEY (
	`notice_id`
);

ALTER TABLE `tbl_photo_comment` ADD CONSTRAINT `PK_TBL_PHOTO_COMMENT` PRIMARY KEY (
	`comment_id`
);

ALTER TABLE `tbl_vote` ADD CONSTRAINT `PK_TBL_VOTE` PRIMARY KEY (
	`vote_id`
);

ALTER TABLE `tbl_personal_schedule` ADD CONSTRAINT `PK_TBL_PERSONAL_SCHEDULE` PRIMARY KEY (
	`ps_id`
);

ALTER TABLE `tbl_set_notice` ADD CONSTRAINT `PK_TBL_SET_NOTICE` PRIMARY KEY (
	`member_id`,
	`notice_id`
);

ALTER TABLE `tbl_group_member` ADD CONSTRAINT `PK_TBL_GROUP_MEMBER` PRIMARY KEY (
	`group_id`,
	`member_id`
);

ALTER TABLE `tbl_cost_history` ADD CONSTRAINT `PK_TBL_COST_HISTORY` PRIMARY KEY (
	`cost_history_id`
);

ALTER TABLE `tbl_vote_history` ADD CONSTRAINT `FK_tbl_member_TO_tbl_vote_history_1` FOREIGN KEY (
	`voter_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_vote_history` ADD CONSTRAINT `FK_tbl_vote_option_TO_tbl_vote_history_1` FOREIGN KEY (
	`option_id`
)
REFERENCES `tbl_vote_option` (
	`option_id`
);

ALTER TABLE `tbl_trip` ADD CONSTRAINT `FK_tbl_group_TO_tbl_trip_1` FOREIGN KEY (
	`group_id`
)
REFERENCES `tbl_group` (
	`group_id`
);

ALTER TABLE `tbl_vote_comment` ADD CONSTRAINT `FK_tbl_member_TO_tbl_vote_comment_1` FOREIGN KEY (
	`creator_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_vote_comment` ADD CONSTRAINT `FK_tbl_vote_TO_tbl_vote_comment_1` FOREIGN KEY (
	`vote_id`
)
REFERENCES `tbl_vote` (
	`vote_id`
);

ALTER TABLE `tbl_budget` ADD CONSTRAINT `FK_tbl_trip_TO_tbl_budget_1` FOREIGN KEY (
	`room_id`
)
REFERENCES `tbl_trip` (
	`room_id`
);

ALTER TABLE `tbl_budget` ADD CONSTRAINT `FK_tbl_member_TO_tbl_budget_1` FOREIGN KEY (
	`writer_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_budget` ADD CONSTRAINT `FK_tbl_category_TO_tbl_budget_1` FOREIGN KEY (
	`category_id`
)
REFERENCES `tbl_category` (
	`category_id`
);

ALTER TABLE `tbl_gallery` ADD CONSTRAINT `FK_tbl_trip_TO_tbl_gallery_1` FOREIGN KEY (
	`room_id`
)
REFERENCES `tbl_trip` (
	`room_id`
);

ALTER TABLE `tbl_gallery` ADD CONSTRAINT `FK_tbl_member_TO_tbl_gallery_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_vote_option` ADD CONSTRAINT `FK_tbl_vote_TO_tbl_vote_option_1` FOREIGN KEY (
	`vote_id`
)
REFERENCES `tbl_vote` (
	`vote_id`
);

ALTER TABLE `tbl_vote_option` ADD CONSTRAINT `FK_tbl_member_TO_tbl_vote_option_1` FOREIGN KEY (
	`creator_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_cost_comment` ADD CONSTRAINT `FK_tbl_cost_TO_tbl_cost_comment_1` FOREIGN KEY (
	`cost_id`
)
REFERENCES `tbl_cost` (
	`cost_id`
);

ALTER TABLE `tbl_cost_comment` ADD CONSTRAINT `FK_tbl_member_TO_tbl_cost_comment_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_member_notice` ADD CONSTRAINT `FK_tbl_member_TO_tbl_member_notice_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_member_notice` ADD CONSTRAINT `FK_tbl_notice_TO_tbl_member_notice_1` FOREIGN KEY (
	`notice_id`
)
REFERENCES `tbl_notice` (
	`notice_id`
);

ALTER TABLE `tbl_member_notice` ADD CONSTRAINT `FK_tbl_group_TO_tbl_member_notice_1` FOREIGN KEY (
	`group_id`
)
REFERENCES `tbl_group` (
	`group_id`
);

ALTER TABLE `tbl_budget_comment` ADD CONSTRAINT `FK_tbl_budget_TO_tbl_budget_comment_1` FOREIGN KEY (
	`budget_id`
)
REFERENCES `tbl_budget` (
	`budget_id`
);

ALTER TABLE `tbl_budget_comment` ADD CONSTRAINT `FK_tbl_member_TO_tbl_budget_comment_1` FOREIGN KEY (
	`writer_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_trip_details` ADD CONSTRAINT `FK_tbl_category_TO_tbl_trip_details_1` FOREIGN KEY (
	`category_id`
)
REFERENCES `tbl_category` (
	`category_id`
);

ALTER TABLE `tbl_trip_details` ADD CONSTRAINT `FK_tbl_trip_TO_tbl_trip_details_1` FOREIGN KEY (
	`room_id`
)
REFERENCES `tbl_trip` (
	`room_id`
);

ALTER TABLE `tbl_trip_details` ADD CONSTRAINT `FK_tbl_vote_option_TO_tbl_trip_details_1` FOREIGN KEY (
	`option_id`
)
REFERENCES `tbl_vote_option` (
	`option_id`
);

ALTER TABLE `tbl_cost` ADD CONSTRAINT `FK_tbl_trip_TO_tbl_cost_1` FOREIGN KEY (
	`room_id`
)
REFERENCES `tbl_trip` (
	`room_id`
);

ALTER TABLE `tbl_cost` ADD CONSTRAINT `FK_tbl_category_TO_tbl_cost_1` FOREIGN KEY (
	`category_id`
)
REFERENCES `tbl_category` (
	`category_id`
);

ALTER TABLE `tbl_cost` ADD CONSTRAINT `FK_tbl_member_TO_tbl_cost_1` FOREIGN KEY (
	`writer_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_cost` ADD CONSTRAINT `FK_tbl_member_TO_tbl_cost_2` FOREIGN KEY (
	`payer_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_cost` ADD CONSTRAINT `FK_tbl_member_TO_tbl_cost_3` FOREIGN KEY (
	`cost_sharer_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_photo_comment` ADD CONSTRAINT `FK_tbl_gallery_TO_tbl_photo_comment_1` FOREIGN KEY (
	`file_id`
)
REFERENCES `tbl_gallery` (
	`file_id`
);

ALTER TABLE `tbl_photo_comment` ADD CONSTRAINT `FK_tbl_member_TO_tbl_photo_comment_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_vote` ADD CONSTRAINT `FK_tbl_trip_TO_tbl_vote_1` FOREIGN KEY (
	`room_id`
)
REFERENCES `tbl_trip` (
	`room_id`
);

ALTER TABLE `tbl_vote` ADD CONSTRAINT `FK_tbl_member_TO_tbl_vote_1` FOREIGN KEY (
	`creator_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_vote` ADD CONSTRAINT `FK_tbl_category_TO_tbl_vote_1` FOREIGN KEY (
	`category_id`
)
REFERENCES `tbl_category` (
	`category_id`
);

ALTER TABLE `tbl_personal_schedule` ADD CONSTRAINT `FK_tbl_member_TO_tbl_personal_schedule_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_set_notice` ADD CONSTRAINT `FK_tbl_member_TO_tbl_set_notice_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_set_notice` ADD CONSTRAINT `FK_tbl_notice_TO_tbl_set_notice_1` FOREIGN KEY (
	`notice_id`
)
REFERENCES `tbl_notice` (
	`notice_id`
);

ALTER TABLE `tbl_group_member` ADD CONSTRAINT `FK_tbl_group_TO_tbl_group_member_1` FOREIGN KEY (
	`group_id`
)
REFERENCES `tbl_group` (
	`group_id`
);

ALTER TABLE `tbl_group_member` ADD CONSTRAINT `FK_tbl_member_TO_tbl_group_member_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_group_member` ADD CONSTRAINT `FK_tbl_group_role_TO_tbl_group_member_1` FOREIGN KEY (
	`role_id`
)
REFERENCES `tbl_group_role` (
	`role_id`
);

ALTER TABLE `tbl_cost_history` ADD CONSTRAINT `FK_tbl_member_TO_tbl_cost_history_1` FOREIGN KEY (
	`writer_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_cost_history` ADD CONSTRAINT `FK_tbl_member_TO_tbl_cost_history_2` FOREIGN KEY (
	`payer_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_cost_history` ADD CONSTRAINT `FK_tbl_member_TO_tbl_cost_history_3` FOREIGN KEY (
	`cost_sharer_id`
)
REFERENCES `tbl_member` (
	`member_id`
);

ALTER TABLE `tbl_cost_history` ADD CONSTRAINT `FK_tbl_category_TO_tbl_cost_history_1` FOREIGN KEY (
	`category_id`
)
REFERENCES `tbl_category` (
	`category_id`
);

ALTER TABLE `tbl_cost_history` ADD CONSTRAINT `FK_tbl_trip_TO_tbl_cost_history_1` FOREIGN KEY (
	`room_id`
)
REFERENCES `tbl_trip` (
	`room_id`
);

ALTER TABLE `tbl_cost_history` ADD CONSTRAINT `FK_tbl_cost_TO_tbl_cost_history_1` FOREIGN KEY (
	`cost_id`
)
REFERENCES `tbl_cost` (
	`cost_id`
);

