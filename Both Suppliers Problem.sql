DROP TABLE IF EXISTS products;

CREATE TABLE products (product_id INT, product_name VARCHAR(100), supplier_name VARCHAR(50));
INSERT INTO products (product_id, product_name, supplier_name) 
	VALUES (1, 'Product 1', 'Supplier A'),
	(1, 'Product 1', 'Supplier B'),
	(3, 'Product 3', 'Supplier A'), 
	(3, 'Product 3', 'Supplier A'),
	(5, 'Product 5', 'Supplier A'), 
	(5, 'Product 5', 'Supplier B'), 
	(7, 'Product 7', 'Supplier C'),
	(8, 'Product 8', 'Supplier A'), 
	(7, 'Product 7', 'Supplier B'), 
	(7, 'Product 7', 'Supplier A'), 
	(9, 'Product 9', 'Supplier B'),
	(9, 'Product 9', 'Supplier C'), 
	(10, 'Product 10', 'Supplier C'), 
	(11, 'Product 11', 'Supplier C'), 
	(10, 'Product 10', 'Supplier A');

SELECT * FROM PRODUCTS

/*
Find products that are sold by both Supplier A and Supplier B, excluding products sold by only one supplier.
*/

SELECT product_id, product_name FROM products
	WHERE supplier_name IN ('Supplier A', 'Supplier B') 
GROUP BY product_id, product_name
	HAVING COUNT(DISTINCT supplier_name) = 2;
