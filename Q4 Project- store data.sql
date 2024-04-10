USE sql_q4_project;

SELECT * FROM store_data ;

-- 1.select data who is making profit

SELECT * FROM store_data WHERE profit > 0 ;

-- 2. select the data who is making profit with discount >= 0.5

SELECT * FROM store_data WHERE profit > 0 AND discount >= 0.5;

-- 3. select unique customerID

SELECT DISTINCT CustomerID FROM store_data ;

-- 4. Take the categories & subcategories in where this unique customerID present

SELECT DISTINCT CustomerID , Category , subcategory  FROM store_data;

-- 5.select most profit making city

SELECT  city , sum(profit) AS Profit_made FROM store_data GROUP BY city ORDER BY sum(profit) DESC;

-- 6. create a newtable duplicate TABLE

CREATE TABLE store_data_copy AS SELECT * FROM store_data;

-- 7. In new table delete the rows whos discount is < 0.3

DELETE FROM store_data_copy WHERE discount < 0.3  ;
SELECT * FROM store_data_copy;

-- 8. find what category is saled most

SELECT  category , sum(quantity) AS No_of_items_sold , sum(sales) AS Total_sales FROM store_data GROUP BY category ORDER BY sum(sales) DESC ;

-- 9. find which shipmode made most profit  

SELECT  shipmode , sum(profit) AS Profit_made FROM store_data GROUP BY shipmode ORDER BY sum(profit) DESC ;

-- 10. GET which subcategories quantity is high

SELECT subcategory , sum(quantity) AS No_of_items_sold FROM store_data GROUP BY subcategory ORDER BY sum(quantity) DESC ;

-- 11. select the rank of 21-31 most sales record (doubt)

SELECT * , RANK() 
OVER ( ORDER BY Sales_made DESC) AS sales_rank FROM
( SELECT DISTINCT(c.CustomerId), s.CustomerName , c.Sales_made 
FROM ( SELECT customerid, sum(sales) AS Sales_made FROM store_data GROUP BY customerid ORDER BY sum(sales) DESC ) AS c
INNER JOIN store_data s
ON c.customerid = s.customerid ) AS subquery LIMIT 11 OFFSET 20 ;  -- (most sales record in terms of customers)

SELECT * , RANK()
OVER ( ORDER BY Sales_made DESC) AS rank_sum_sales
FROM (SELECT city , sum(sales) AS Sales_made FROM store_data GROUP BY city ORDER BY sum(sales) DESC) 
AS subquery LIMIT 11 OFFSET 20; -- (most sales record in terms of city)
 
-- 12. create a new column combining category & subcategories ex category = 'Office Supplies' subcategories = 'Binders' newColumn = 'Office Supplies-Binders'

ALTER TABLE store_data ADD COLUMN newColumn VARCHAR(255) ;
SET sql_safe_updates = 0;
UPDATE store_data SET newColumn = concat(category , "-" , subcategory) ;
SELECT * FROM store_data ;

-- 13. select the data ordered after 8/3/2015 and before 1/10/2017 

UPDATE store_data SET Orderdate = STR_TO_DATE(Orderdate, '%m-%d-%Y');

SELECT * FROM store_data WHERE Orderdate BETWEEN '2015-03-09' AND '2017-09-30' ORDER BY orderdate;
-- (OR)
SELECT * FROM store_data WHERE Orderdate > '2015-03-08' AND Orderdate <'2017-10-01' ORDER BY orderdate;

-- 14. find the most used customerID

SELECT customerid , count(customerid) AS No_of_times_ordered FROM store_data GROUP BY customerid ORDER BY count(customerid) DESC ;

-- 15. create a new column having customer_name_length

ALTER TABLE store_data ADD COLUMN customer_name_length INT ;
UPDATE store_data SET customer_name_length = length (customerName) ;
SELECT * FROM store_data ;

-- 16. how many unique orders created

SELECT COUNT(DISTINCT OrderId) AS No_of_unique_orders FROM store_data; 
-- (or)
SELECT OrderId , COUNT(OrderId) FROM store_data GROUP BY OrderId ORDER BY COUNT(OrderId) DESC;

-- 17. what orderID has the most sales

SELECT OrderId , COUNT(sales) AS No_of_items_ordered ,SUM(sales) AS Total_sales FROM store_data GROUP BY orderid ORDER BY SUM(sales)  DESC ;

-- 18. rank the ordID based on the sales, grouped on city 

CREATE VIEW OrderId_sales AS
SELECT DISTINCT (o.orderID) , s.city , o.Total_sales   
FROM ( SELECT orderID , SUM(sales) AS Total_sales FROM store_data GROUP BY orderId ) AS o 
INNER JOIN store_data s
ON o.orderID = s.orderID ;

SELECT orderID , city , Total_sales  , RANK() OVER (PARTITION BY city ORDER BY Total_sales DESC) AS sales_rank FROM OrderId_sale ;

-- 19.  find the window function - sum based on partion by date (doubt)

SELECT * , SUM(sales)
OVER (PARTITION BY OrderDate ORDER BY OrderDate) AS sum_sales
FROM store_data ;

-- 20. productID sales

SELECT  ProductID , COUNT(sales) AS No_of_products_sold , SUM(sales) AS Total_sales  FROM store_data GROUP BY productid ORDER BY SUM(sales) DESC ;






