CREATE TABLE sales (sale_id INT PRIMARY KEY, customer_id INT, sale_date DATE); 
INSERT INTO sales VALUES (1, 1, '2023-01-15'), (2, 2, '2023-02-20'), (3, 1, '2023-02-28');


SELECT * FROM SALES

/*
Identify all customers who made purchases in both January and February.
*/


SELECT customer_id
FROM sales
WHERE EXTRACT(MONTH FROM sale_date) = 1
AND customer_id IN (
    SELECT customer_id
    FROM sales
    WHERE EXTRACT(MONTH FROM sale_date) = 2
);
