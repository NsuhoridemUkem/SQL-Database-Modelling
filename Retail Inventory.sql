-- Database Modeling Project
-- Project Objective
-- (This project aims to create a relational database to manage inventory for a retail business with 1000 products across 20 categories. 
-- The project includes designing the schema, creating tables, establishing relationships, and automating inventory reports.)

CREATE DATABASE retailinventory_db;
USE retailinventory_db;

-- 1. Create Product Category table. This table stores product categories.
CREATE TABLE product_category (
	category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL);

-- 2. Create Product table. This table stores product details.
CREATE TABLE product (
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_qty INT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
    );

-- 3. Create Supplier table. This table stores supplier details.
CREATE TABLE supplier (
	supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    contact_info VARCHAR(255) NOT NULL
    );
    
SELECT * FROM supplier;

ALTER TABLE supplier
DROP COLUMN first_name, 
DROP COLUMN last_name;

ALTER TABLE supplier
ADD supplier_name VARCHAR(100); 

ALTER TABLE supplier
MODIFY COLUMN supplier_name VARCHAR(100) AFTER supplier_id;

-- 4. Create table Product suppliers. This table handles the many-to-many relationship between Products and Suppliers.
CREATE TABLE product_supplier (
	product_id INT,
    supplier_id INT,
    PRIMARY KEY (product_id, supplier_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
	FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
	);

SHOW CREATE TABLE product_supplier;

-- Including constraints
ALTER TABLE product_supplier
DROP FOREIGN KEY product_supplier_ibfk_1,
DROP FOREIGN KEY product_supplier_ibfk_2;

ALTER TABLE product_supplier
ADD CONSTRAINT product_supplier_ibfk_1
    FOREIGN KEY (product_id) REFERENCES product(product_id) ON DELETE CASCADE,
ADD CONSTRAINT product_supplier_ibfk_2
	FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id) ON DELETE CASCADE;

-- 5. Create Orders table. This table stores order details.
CREATE TABLE orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE NOT NULL,
    order_amount DECIMAL (10, 2)
    );
    
-- 6. Create Order Details table. This table handles the many-to-many relationship between Orders and Products.
CREATE TABLE order_details (
	order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
    );
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    




























