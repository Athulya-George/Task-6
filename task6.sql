Use task6;
CREATE TABLE online_sales (
  Order_ID VARCHAR(20),
  Order_Date DATE,
  Product_Category VARCHAR(100),
  Product_Name TEXT,
  Units_Sold INT,
  Unit_Price DECIMAL(10, 2),
  Total_Revenue DECIMAL(10, 2),
  Region VARCHAR(100),
  Payment_Method VARCHAR(50)
);
Select * from online_sales;

SELECT 
  EXTRACT(MONTH FROM order_date) AS month
FROM online_sales;

SELECT 
  EXTRACT(YEAR FROM order_date) AS year
FROM online_sales;


SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(total_revenue) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  COUNT(DISTINCT order_id) AS monthly_order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(total_revenue) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS monthly_order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(total_revenue) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS monthly_order_volume
FROM online_sales
WHERE EXTRACT(YEAR FROM order_date) = 2022
GROUP BY year, month
ORDER BY year, month;

