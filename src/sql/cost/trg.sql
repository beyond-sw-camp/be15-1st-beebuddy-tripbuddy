-- 비용 생성 트리거
DELIMITER //

CREATE OR REPLACE TRIGGER after_insert_cost
	AFTER INSERT
	ON tbl_cost
	FOR EACH ROW
BEGIN
	INSERT INTO
		tbl_cost_history
	(
		history_type
		, updated_at
		, cost_amount
		, cost_name
		, writer_id
		, category_id
		, payer_id
		, room_id
		, cost_id
	)
	VALUES
	(
		'CREATED'
		, NEW.created_at
		, NEW.cost_amount
		, NEW.cost_name
		, NEW.writer_id
		, NEW.category_id
		, NEW.payer_id
		, NEW.room_id
		, NEW.cost_id
	);
END //

DELIMITER ;


-- 비용 수정 트리거
CREATE OR REPLACE TRIGGER after_update_cost
	AFTER DELETE
	ON tbl_cost
	FOR EACH ROW
BEGIN
	INSERT INTO
		tbl_cost_history
	(
		history_type
		, updated_at
		, cost_amount
		, cost_name
		, writer_id
		, category_id
		, payer_id
		, room_id
		, cost_id
	)
	VALUES
	(
		'UPDATED'
		, NEW.created_at
		, NEW.cost_amount
		, NEW.cost_name
		, NEW.writer_id
		, NEW.category_id
		, NEW.payer_id
		, NEW.room_id
		, NEW.cost_id
	);
	

END //

DELIMITER ;

-- 비용 삭제 트리거
CREATE OR REPLACE TRIGGER after_delete_cost
	AFTER DELETE
	ON tbl_cost
	FOR EACH ROW
BEGIN
	INSERT INTO
		tbl_cost_history
	(
		history_type
		, updated_at
		, cost_amount
		, cost_name
		, writer_id
		, category_id
		, payer_id
		, room_id
		, cost_id
	)
	VALUES
	(
		'DELETED'
		, NEW.created_at
		, NEW.cost_amount
		, NEW.cost_name
		, NEW.writer_id
		, NEW.category_id
		, NEW.payer_id
		, NEW.room_id
		, NULL -- cost_id null로 바꿔줌!
	);
	

END //

DELIMITER ;
