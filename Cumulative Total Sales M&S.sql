CREATE TABLE sales (
         sale_id INT PRIMARY KEY, 
         sale_date DATE, 
         amount DECIMAL(10, 2)
     );
     INSERT INTO sales VALUES 
         (1, '2023-01-10', 1500.00), 
         (2, '2023-02-15', 1800.00), 
         (3, '2023-03-05', 2000.00), 
         (4, '2023-04-12', 2200.00);

SELECT * FROM SALES

/*
Calculate the cumulative total sales for each month at Marks & Spencer.
*/


SELECT 
    sale_id,
    sale_date,
    amount,
    SUM(amount) OVER (PARTITION BY EXTRACT(MONTH FROM sale_date) ORDER BY sale_date) AS cumulative_total
FROM 
    sales
ORDER BY 
    sale_date;
