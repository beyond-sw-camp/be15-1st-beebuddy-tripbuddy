DROP TABLE IF EXISTS `tbl_trip_details`;

CREATE TABLE `tbl_trip_details` (
	`detail_id`	INT AUTO_INCREMENT NOT NULL,
	`category_id` INT NOT NULL COMMENT '카테고리 ID',
	`room_id` INT NOT NULL COMMENT '여행방 ID',
	`option_id`	INT AUTO_INCREMENT NULL COMMENT '투표항목 ID',
	`detail_content` VARCHAR(50) NOT NULL COMMENT '세부 항목',
	`custom_order` INT NOT NULL COMMENT '사용자정의 순서',
	`visit_day`	INT NULL COMMENT '방문일',
	`is_hidden`	ENUM('Y', 'N') NOT NULL DEFAULT 'N' COMMENT '숨김여부'
);

ALTER TABLE `tbl_trip_details` ADD CONSTRAINT `PK_TBL_TRIP_DETAILS` PRIMARY KEY (
	`detail_id`
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
) ON DELETE CASCADE;

ALTER TABLE `tbl_trip_details` ADD CONSTRAINT `FK_tbl_vote_option_TO_tbl_trip_details_1` FOREIGN KEY (
	`option_id`
)
REFERENCES `tbl_vote_option` (
	`option_id`
);