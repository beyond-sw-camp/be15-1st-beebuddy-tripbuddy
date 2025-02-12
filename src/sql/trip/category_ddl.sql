DROP TABLE IF EXISTS `tbl_category`;
-- test
CREATE TABLE `tbl_category` (
	`category_id`	INT NOT NULL,
	`category_name` VARCHAR(10) NOT NULL COMMENT '카테고리 이름'
);

ALTER TABLE `tbl_category` ADD CONSTRAINT `PK_TBL_CATEGORY` PRIMARY KEY (
	`category_id`
);