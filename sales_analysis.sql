--Project: Sales Data Analysis
--Create table
CREATE TABLE sales(
  id INT,
  product VARCHAR(50),
  category VARCHAR(50),
  amount INT,
  city VARCHAR(50)
 );

--Insert data
 INSERT INTO sales VALUES
 (1,'Mobile','Electronics',20000,'Bangalore'),
 (2,'Laptop','Electronics',50000,'Chennai'),
 (3,'Shirt','Clothing',2000,'Bangalore'),
 (4,'Shoes','Clothing',3000,'Chennai'),
 (5,'TV','Electronics',40000,'Bangalore');

--Total sales per category
SELECT category,SUM(amount) AS total_sales
 FROM sales
 GROUP BY category;

--Total sales per city
 SELECT city,SUM(amount) AS total_sales
 FROM sales
 GROUP BY city;

--Highest selling product
 SELECT product,amount
 FROM sales
 WHERE amount=(SELECT MAX(amount) FROM sales);

--Sales above average
SELECT product,amount
FROM sales
WHERE amount>(SELECT AVG(amount) FROM sales);

--Category classification
SELECT product,
CASE 
	WHEN amount > 30000 THEN 'High'
    WHEN amount >= 10000 THEN 'Medium'
    ELSE 'Low'
END AS sales_category
FROM sales;

--City with highest sales
SELECT city, SUM(amount) AS total_sales
FROM sales
GROUP BY city
ORDER BY total_sales DESC
LIMIT 1;
