-- Inserting values into the tables

USE retailinventory_db;
-- 1. Values for Category table
SELECT * FROM product_category;
INSERT INTO product_category (category_name) VALUES 
('Laptops'), ('Smart Phones'), ('Tablets'), ('Smart Watches'), ('Earpods');

INSERT INTO product_category (category_name) VALUES 
('SmartTV'), ('Video Games');

-- 2. Insert values for Product table
SELECT * FROM product;
-- For Laptops category
INSERT INTO product (product_name, price, stock_qty, category_id) VALUES
('Dell XPS 13', 1099.99, 40, 1),
('MacBook Pro 14', 1999.99, 25, 1),
('HP Spectre x360', 1399.99, 35, 1),
('Lenovo ThinkPad X1', 1299.99, 50, 1),
('ASUS ZenBook Duo', 1499.99, 20, 1),
('Acer Swift 5', 899.99, 60, 1),
('Microsoft Surface Laptop 5', 1199.99, 30, 1),
('Razer Blade 15', 2499.99, 15, 1),
('LG Gram 16', 1399.99, 40, 1),
('Samsung Galaxy Book 3 Pro', 1499.99, 30, 1),
('Alienware m15 R6', 2199.99, 20, 1),
('MSI Prestige 14', 1299.99, 50, 1),
('Gigabyte Aero 15', 1699.99, 25, 1),
('Huawei MateBook X Pro', 1499.99, 35, 1),
('Google Pixelbook Go', 849.99, 60, 1),
('Toshiba Dynabook', 999.99, 45, 1),
('Sony VAIO SX14', 1799.99, 20, 1),
('Panasonic Toughbook 55', 2099.99, 10, 1),
('Fujitsu Lifebook U9311', 1899.99, 15, 1),
('Chuwi LapBook Pro', 499.99, 100, 1);

SELECT * FROM product_category;
-- For Smart Phones category
SELECT * FROM product;
INSERT INTO product (product_name, price, stock_qty, category_id) VALUES
('iPhone 14 Pro Max', 1199.99, 50, 2),
('Samsung Galaxy Z Fold 5', 1799.99, 30, 2),
('Google Pixel 7 Pro', 899.99, 80, 2),
('OnePlus Nord CE 3', 329.99, 100, 2),
('Sony Xperia 1 V', 1399.99, 20, 2),
('Xiaomi Redmi Note 12', 249.99, 150, 2),
('Huawei P60 Pro', 1299.99, 60, 2),
('Asus ROG Phone 7 Ultimate', 1499.99, 40, 2),
('Nokia G60', 299.99, 120, 2),
('Motorola Moto G Power', 199.99, 200, 2),
('Realme GT 3', 599.99, 90, 2),
('Vivo X90 Pro', 999.99, 50, 2),
('Oppo Reno 10x Zoom', 799.99, 70, 2),
('ZTE Axon 40 Ultra', 899.99, 60, 2),
('Tecno Camon 20 Premier', 349.99, 140, 2),
('Infinix Zero Ultra', 399.99, 160, 2),
('iQOO Neo 7', 429.99, 110, 2),
('Samsung Galaxy A54', 449.99, 180, 2),
('Honor Magic 5 Pro', 1099.99, 25, 2),
('Lava Blaze 5G', 199.99, 250, 2),
('Fairphone 5', 649.99, 30, 2),
('Lenovo Legion Phone Duel 2', 999.99, 45, 2),
('Sony Xperia 10 V', 499.99, 60, 2),
('Poco F5 Pro', 549.99, 90, 2),
('Nothing Phone (2)', 599.99, 100, 2);

SELECT * FROM product_category;
-- For Tablets category
SELECT * FROM product;
INSERT INTO product (product_name, price, stock_qty, category_id) VALUES
('Apple iPad Pro 12.9', 1099.99, 50, 3),
('Samsung Galaxy Tab S8+', 899.99, 60, 3),
('Microsoft Surface Pro 9', 999.99, 45, 3),
('Amazon Fire HD 10', 149.99, 200, 3),
('Lenovo Tab P11 Pro', 499.99, 80, 3),
('Xiaomi Pad 6 Pro', 599.99, 90, 3),
('Huawei MatePad Pro', 799.99, 70, 3),
('ASUS ROG Flow Z13', 1299.99, 30, 3),
('Sony Xperia Tablet Z4', 649.99, 50, 3),
('Realme Pad X', 329.99, 120, 3),
('Google Pixel Tablet', 599.99, 100, 3),
('Dell Latitude 7320 Detachable', 1199.99, 25, 3),
('HP Chromebook x2 11', 599.99, 90, 3),
('TCL TAB Pro 5G', 399.99, 75, 3),
('Nokia T21', 299.99, 140, 3);

SELECT * FROM product_category;
-- For Smart Watches category
SELECT * FROM product;
INSERT INTO product (product_name, price, stock_qty, category_id) VALUES
('Apple Watch Series 9', 399.99, 150, 4),
('Samsung Galaxy Watch 6', 349.99, 200, 4),
('Garmin Forerunner 965', 599.99, 100, 4),
('Fitbit Versa 4', 229.99, 180, 4),
('Fossil Gen 6 Smartwatch', 299.99, 120, 4),
('Huawei Watch GT 4', 249.99, 140, 4),
('Amazfit GTR 4', 199.99, 160, 4),
('TicWatch Pro 3', 329.99, 80, 4),
('Polar Grit X Pro', 499.99, 70, 4),
('Withings ScanWatch', 299.99, 110, 4),
('Sony Wena 3', 399.99, 50, 4),
('Michael Kors Access Gen 6', 349.99, 90, 4),
('Suunto 9 Peak', 569.99, 60, 4),
('Mobvoi TicWatch E3', 199.99, 100, 4),
('Google Pixel Watch', 349.99, 140, 4);

SELECT * FROM product_category;
-- For Smart Watches category
SELECT * FROM product;
INSERT INTO product (product_name, price, stock_qty, category_id) VALUES
('Apple AirPods Pro (2nd Gen)', 249.99, 300, 5),
('Samsung Galaxy Buds 2 Pro', 199.99, 250, 5),
('Sony WF-1000XM5', 299.99, 200, 5),
('Bose QuietComfort Earbuds II', 279.99, 180, 5),
('Jabra Elite 85t', 229.99, 150, 5),
('Beats Fit Pro', 199.99, 220, 5),
('Anker Soundcore Liberty 4', 149.99, 300, 5),
('Google Pixel Buds Pro', 199.99, 200, 5),
('Sennheiser Momentum True Wireless 3', 249.99, 120, 5),
('LG Tone Free T90', 229.99, 140, 5),
('Skullcandy Indy ANC', 129.99, 180, 5),
('Nothing Ear (2)', 149.99, 210, 5),
('OnePlus Buds Pro 2', 179.99, 200, 5),
('Huawei FreeBuds Pro 2', 199.99, 160, 5),
('Razer Hammerhead True Wireless Pro', 199.99, 190, 5);

-- For SmartTV category
SELECT * FROM product;
INSERT INTO product (product_name, price, stock_qty, category_id) VALUES
('Samsung 65" QLED', 1299.99, 50, 6),
('LG 55" OLED', 1199.99, 40, 6),
('Sony Bravia 75"', 1499.99, 30, 6),
('TCL 50" 4K', 499.99, 70, 6),
('Vizio 70" UHD', 899.99, 35, 6),
('Hisense 55" HDR', 549.99, 60, 6),
('Panasonic 58" LED', 699.99, 25, 6),
('Philips 65" Ambilight', 1199.99, 20, 6),
('Sharp 60" SmartTV', 799.99, 45, 6),
('Toshiba 55" FireTV', 649.99, 55, 6),
('Insignia 50" HD', 399.99, 80, 6),
('JVC 65" UHD', 729.99, 33, 6),
('Roku 43" SmartTV', 299.99, 95, 6),
('Sceptre 75" 4K', 899.99, 28, 6),
('Westinghouse 55"', 449.99, 67, 6);

-- For Video Game Platforms category
SELECT * FROM product;
INSERT INTO product (product_name, price, stock_qty, category_id) VALUES
('PlayStation 5', 499.99, 50, 7),
('Xbox Series X', 499.99, 40, 7),
('Nintendo Switch OLED', 349.99, 60, 7),
('Steam Deck', 399.99, 30, 7),
('PlayStation 4', 299.99, 80, 7),
('Xbox Series S', 299.99, 70, 7),
('Nintendo Switch Lite', 199.99, 90, 7),
('Oculus Quest 2', 299.99, 100, 7),
('PlayStation VR2', 549.99, 20, 7),
('Atari VCS', 249.99, 15, 7),
('Sega Genesis Mini', 79.99, 120, 7),
('SNES Classic Edition', 79.99, 110, 7),
('NES Classic Edition', 59.99, 130, 7),
('Google Stadia Premiere Edition', 99.99, 10, 7),
('Nvidia Shield TV Pro', 199.99, 25, 7),
('Alienware Aurora R12', 1499.99, 5, 7),
('Asus ROG Ally', 699.99, 35, 7),
('Razer Edge 5G', 399.99, 50, 7),
('Logitech G Cloud', 349.99, 45, 7),
('Anbernic RG351MP', 129.99, 75, 7);

-- 3. Inserting values into the Supplier table
SELECT * FROM supplier;
INSERT INTO supplier (supplier_name, contact_info) VALUES
('TechSource Ltd.', 'contact@techsource.com, +1-800-123-4567'),
('Gadget Distributors Inc.', 'sales@gadgetdistributors.com, +44-20-7946-0958'),
('Elite Electronics', 'support@eliteelectronics.com, +1-310-555-0101'),
('Global Supply Co.', 'info@globalsupply.com, +91-9876543210'),
('Prime Tech Solutions', 'service@primetech.com, +61-7-5555-1234'),
('Innovative Supplies', 'orders@innovativesupplies.com, +49-30-12345678'),
('NextGen Devices', 'contact@nextgendevices.com, +81-3-1234-5678');

SELECT * FROM product;
-- 4. Inserting values into the Product Supplier table
SELECT * FROM product_supplier;
INSERT INTO product_supplier (product_id, supplier_id) VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1),
(11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1), (17, 1), (18, 1), (19, 1), (20, 1);

INSERT INTO product_supplier (product_id, supplier_id) VALUES
(21, 2), (22, 2), (23, 2), (24, 2), (25, 2), (26, 2), (27, 2), (28, 2), (29, 2), (30, 2),
(31, 2), (32, 2), (33, 2), (34, 2), (35, 2), (36, 2), (37, 2), (38, 2), (39, 2), (40, 2),
(41, 2), (42, 2), (43, 2), (44, 2), (45, 2);

INSERT INTO product_supplier (product_id, supplier_id) VALUES
(46, 3), (47, 3), (48, 3), (49, 3), (50, 3),
(51, 3), (52, 3), (53, 3), (54, 3), (55, 3),
(56, 3), (57, 3), (58, 3), (59, 3), (60, 3),
(61, 4), (62, 4), (63, 4), (64, 4), (65, 4),
(66, 4), (67, 4), (68, 4), (69, 4), (70, 4),
(71, 4), (72, 4), (73, 4), (74, 4), (75, 4),
(76, 5), (77, 5), (78, 5), (79, 5), (80, 5),
(81, 5), (82, 5), (83, 5), (84, 5), (85, 5),
(86, 5), (87, 5), (88, 5), (89, 5), (90, 5);

INSERT INTO product_supplier (product_id, supplier_id) VALUES
(91, 6), (92, 6), (93, 6), (94, 6), (95, 6),
(96, 6), (97, 6), (98, 6), (99, 6), (100, 6),
(101, 6), (102, 6), (103, 6), (104, 6), (105, 6),
(106, 7), (107, 7), (108, 7), (109, 7), (110, 7),
(111, 7), (112, 7), (113, 7), (114, 7), (115, 7),
(116, 7), (117, 7), (118, 7), (119, 7), (120, 7),
(121, 7), (122, 7), (123, 7), (124, 7), (125, 7);

SELECT * FROM product;
SELECT * FROM product_category;

SELECT * 
FROM product pd
	LEFT JOIN product_category pc
    ON pd.category_id = pc.category_id
;

SELECT * FROM orders;
-- 5. Inserting values into the Orders table
SELECT * FROM product;

SELECT price*stock_qty
FROM product;

SELECT SUM(price), SUM(stock_qty), SUM(price)*SUM(stock_qty)
FROM product;

WITH total_amount AS
(SELECT price, stock_qty, price*stock_qty
FROM product)
SELECT SUM(price*stock_qty)
FROM total_amount;

SELECT * FROM order_details;

SELECT * FROM orders;
-- 5. Inserting values into the Orders table
INSERT INTO orders (order_date, order_amount) VALUES
('2024-07-04', 659.98),
('2024-01-30', 4799.96),
('2024-09-23', 4499.95),
('2024-04-11', 399.98),
('2024-03-07', 599.97),
('2024-06-15', 2999.98),
('2024-01-17', 3199.96),
('2024-05-15', 349.99),
('2024-03-04', 259.98),
('2024-01-01', 999.98),
('2024-11-30', 799.99),
('2024-09-24', 1899.99),
('2024-04-30', 1199.97),
('2024-05-02', 1499.99),
('2024-03-20', 5999.96),
('2024-01-25', 1199.97),
('2024-02-10', 229.99),
('2024-06-07', 799.96),
('2024-06-14', 5999.97),
('2024-05-25', 599.99),
('2024-08-23', 1199.97),
('2024-01-03', 199.99),
('2024-01-04', 7499.95),
('2024-07-09', 1599.98),
('2024-08-29', 2799.96),
('2024-12-02', 3599.96),
('2024-09-13', 5199.96),
('2024-12-21', 4499.97),
('2024-02-08', 299.99),
('2024-02-14', 259.98),
('2024-11-08', 699.98),
('2024-03-21', 3999.96),
('2024-07-15', 1499.99),
('2024-04-13', 5499.95),
('2024-02-14', 319.96),
('2024-11-27', 1699.99),
('2024-04-01', 919.96),
('2024-08-27', 599.98),
('2024-12-05', 1999.95),
('2024-03-13', 799.99),
('2024-02-09', 1749.95),
('2024-02-01', 599.99),
('2024-08-23', 729.99),
('2024-02-12', 749.95),
('2024-11-04', 7499.95),
('2024-12-27', 599.98),
('2024-11-28', 1499.97),
('2024-03-13', 249.99),
('2024-10-23', 389.97);

SELECT * FROM order_details;
-- 6. Inserting valuse into the Order Details table
INSERT INTO order_details (order_id, product_id, quantity) VALUES
(1, 58, 1),
(2, 85, 5),
(2, 74, 1),
(2, 122, 1),
(3, 19, 2),
(3, 72, 1),
(4, 89, 2),
(5, 77, 3),
(6, 13, 1),
(6, 113, 4),
(7, 67, 1),
(8, 84, 1),
(10, 6, 1),
(11, 55, 1),
(12, 4, 1),
(12, 81, 1),
(13, 69, 2),
(14, 70, 3),
(14, 82, 4),
(15, 26, 4),
(16, 71, 3),
(18, 74, 2),
(19, 74, 2),
(20, 81, 2),
(21, 84, 2),
(21, 96, 1),
(23, 73, 4),
(23, 35, 1),
(24, 98, 1),
(25, 88, 2),
(26, 100, 3),
(26, 71, 4),
(27, 77, 5),
(27, 83, 5),
(27, 105, 1),
(28, 124, 4),
(28, 75, 3),
(30, 90, 1),
(31, 105, 1),
(32, 17, 2),
(32, 124, 1),
(33, 50, 3),
(34, 34, 1),
(34, 57, 2),
(36, 104, 1),
(36, 84, 3),
(37, 34, 1),
(38, 40, 3),
(39, 73, 3);










