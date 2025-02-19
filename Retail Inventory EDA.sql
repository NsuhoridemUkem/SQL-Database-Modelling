
SELECT * FROM order_details;
SELECT * FROM orders;
SELECT * FROM product;
SELECT * FROM product_category;

SELECT *
	FROM order_details AS od JOIN orders AS O ON od.order_id = O.order_id;

-- 1. Total number of orders made
SELECT COUNT(*) num_orders
	FROM order_details AS od JOIN orders AS O ON od.order_id = O.order_id;

SELECT COUNT(*)
FROM order_details AS od
	LEFT JOIN product AS pd ON od.product_id = pd.product_id
    JOIN product_category AS pc ON pd.category_id = pc.category_id;

SELECT *
FROM order_details AS od
	LEFT JOIN product AS pd ON od.product_id = pd.product_id
    JOIN product_category AS pc ON pd.category_id = pc.category_id;

-- 2. View the important details of the order details table
SELECT od.order_id, od.product_id, product_name, category_name, 
price, quantity, order_date, order_amount
FROM order_details AS od
	LEFT JOIN product AS pd ON od.product_id = pd.product_id
    JOIN product_category AS pc ON pd.category_id = pc.category_id
    JOIN orders AS O ON od.order_id = O.order_id
    ORDER BY order_date
    ;

SELECT od.order_id, od.product_id, product_name, category_name, 
price, quantity, order_date, order_amount, ROW_NUMBER() OVER(PARTITION BY order_id) AS row_num
FROM order_details AS od
	LEFT JOIN product AS pd ON od.product_id = pd.product_id
    JOIN product_category AS pc ON pd.category_id = pc.category_id
    JOIN orders AS O ON od.order_id = O.order_id
    ORDER BY od.order_id
    ;

-- 3. Highest number of orders
WITH CTE AS (
SELECT od.order_id, od.product_id, product_name, category_name, 
price, quantity, order_date, order_amount, ROW_NUMBER() OVER(PARTITION BY order_id) AS row_num
FROM order_details AS od
	LEFT JOIN product AS pd ON od.product_id = pd.product_id
    JOIN product_category AS pc ON pd.category_id = pc.category_id
    JOIN orders AS O ON od.order_id = O.order_id
    ORDER BY od.order_id
    ) 
SELECT *
FROM CTE
WHERE row_num > 1
ORDER BY row_num DESC;

-- 4. Most ordered products
SELECT od.product_id, product_name, category_name, COUNT(od.product_id) AS num_ordered_products
FROM order_details AS od
	LEFT JOIN product AS pd ON od.product_id = pd.product_id
    JOIN product_category AS pc ON pd.category_id = pc.category_id
    JOIN orders AS O ON od.order_id = O.order_id
    GROUP BY od.product_id, product_name, category_name
    ORDER BY COUNT(od.product_id) DESC
    ;

SELECT * FROM order_details;
-- 5. Most ordered category
SELECT pc.category_id, category_name, COUNT(pc.category_id) AS num_ordered_category
FROM order_details AS od
	LEFT JOIN product AS pd ON od.product_id = pd.product_id
    JOIN product_category AS pc ON pd.category_id = pc.category_id
    JOIN orders AS O ON od.order_id = O.order_id
    GROUP BY category_id, category_name
    ORDER BY COUNT(pc.category_id) DESC
;





























