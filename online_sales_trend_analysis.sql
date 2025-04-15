-- Filter by a Specific Year (2023)
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
WHERE YEAR(order_date) = 2023
GROUP BY year, month
ORDER BY year, month;

-- Filter by Date Range (e.g. Jan to Mar 2023)
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
WHERE order_date BETWEEN '2023-01-01' AND '2023-03-31'
GROUP BY year, month
ORDER BY year, month;

-- Filter by Specific Month (e.g. July 2023)
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
WHERE YEAR(order_date) = 2023 AND MONTH(order_date) = 7
GROUP BY year, month
ORDER BY year, month;

-- Top 3 Months by Sales
SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(total_price) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;
