-- Schema Optimizatiom

-- Event Scheduling 
-- To check if MySQL event scheduler is enabled on the server
SHOW VARIABLES LIKE 'event_scheduler';

-- If not enabled, enable by running the query
-- To enable or disable;
SET GLOBAL event_scheduler = OFF;

SET GLOBAL event_scheduler = ON;

-- To create an event to show report on the inventory once a month
DELIMITER $$
CREATE EVENT Monthly_Inventory_Report
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-01-25 00:00:00'
DO
	BEGIN
		INSERT INTO Inventoy_Report (report_date, product_id, stock_qty)
        SELECT NOW(), product_id, stock_qty
        FROM product;
    END$$
DELIMITER ;

SELECT * FROM product;

-- 2. For a one time report
DELIMITER $$
CREATE EVENT One_Time_Report
ON SCHEDULE AT '2025-02-10 00:00:00'
DO
	BEGIN
		UPDATE product
        SET stock_qty = stock_qty - 5
        WHERE product_id = 1;
	END$$
DELIMITER ;

-- To manage events
SHOW EVENTS;


























