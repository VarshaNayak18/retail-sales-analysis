-- Total Sales
SELECT SUM(Sales) AS total_sales
FROM sales;

-- Sales by Category
SELECT Category, SUM(Sales) AS total_sales
FROM sales
GROUP BY Category;

-- Profit by Region
SELECT Region, SUM(Profit) AS total_profit
FROM sales
GROUP BY Region;

-- Top 5 sub-categories
SELECT "Sub-Category", SUM(Sales) AS total_sales
FROM sales
GROUP BY "Sub-Category"
ORDER BY total_sales DESC
LIMIT 5;