-- E-Commerce Sales & Customer Analytics
-- SQL Analysis Queries

-- 1. View total number of records
SELECT COUNT(*) AS total_records
FROM sales_clean;

-- 2. Total Revenue
SELECT SUM(Revenue) AS total_revenue
FROM sales_clean;

-- 3. Total Quantity Sold
SELECT SUM(Quantity) AS total_quantity
FROM sales_clean;

-- 4. Total Unique Customers
SELECT COUNT(DISTINCT CustomerID) AS total_customers
FROM sales_clean
WHERE CustomerID IS NOT NULL;

-- 5. Total Invoices
SELECT COUNT(DISTINCT InvoiceNo) AS total_invoices
FROM sales_clean;

-- 6. Revenue by Country
SELECT Country,
       SUM(Revenue) AS total_revenue
FROM sales_clean
GROUP BY Country
ORDER BY total_revenue DESC;

-- 7. Monthly Revenue
SELECT Month,
       SUM(Revenue) AS monthly_revenue
FROM sales_clean
GROUP BY Month
ORDER BY Month;

-- 8. Monthly Quantity Sold
SELECT Month,
       SUM(Quantity) AS total_quantity
FROM sales_clean
GROUP BY Month
ORDER BY Month;

-- 9. Top 10 Products by Revenue
SELECT StockCode,
       SUM(Revenue) AS total_revenue
FROM sales_clean
GROUP BY StockCode
ORDER BY total_revenue DESC
LIMIT 10;

-- 10. Top 10 Products by Quantity Sold
SELECT StockCode,
       SUM(Quantity) AS total_quantity
FROM sales_clean
GROUP BY StockCode
ORDER BY total_quantity DESC
LIMIT 10;