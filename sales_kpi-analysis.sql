USE sales_analysis;
-- 1. Total Sales
SELECT
    ROUND(SUM(sales), 2) AS Total_Sales
FROM sales_data;

-- 2. Total Profit
SELECT
    ROUND(SUM(profit), 2) AS Total_Profit
FROM sales_data;

SELECT
    COUNT(*) AS Total_Orders
FROM sales_data;

SELECT
    SUM(quantity) AS Total_Quantity
FROM sales_data;

SELECT
    ROUND(AVG(sales),2) AS Average_Order_Value
FROM sales_data;

SELECT
    ROUND((SUM(profit)/SUM(sales))*100,2) AS Profit_Margin_Percentage
FROM sales_data;

SELECT
    category,
    ROUND(SUM(sales),2) AS Total_Sales
FROM sales_data
GROUP BY category
ORDER BY Total_Sales DESC;

SELECT
    category,
    ROUND(SUM(profit),2) AS Total_Profit
FROM sales_data
GROUP BY category
ORDER BY Total_Profit DESC;

SELECT
    sub_category,
    ROUND(SUM(sales),2) AS Total_Sales
FROM sales_data
GROUP BY sub_category
ORDER BY Total_Sales DESC;

SELECT
    sub_category,
    ROUND(SUM(profit),2) AS Total_Profit
FROM sales_data
GROUP BY sub_category
ORDER BY Total_Profit DESC;

SELECT
    city,
    ROUND(SUM(sales),2) AS Total_Sales
FROM sales_data
GROUP BY city
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    city,
    ROUND(SUM(profit),2) AS Total_Profit
FROM sales_data
GROUP BY city
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT
    state,
    ROUND(SUM(sales),2) AS Total_Sales
FROM sales_data
GROUP BY state
ORDER BY Total_Sales DESC;

SELECT
    state,
    ROUND(SUM(profit),2) AS Total_Profit
FROM sales_data
GROUP BY state
ORDER BY Total_Profit DESC;

SELECT
    region,
    ROUND(SUM(sales),2) AS Total_Sales
FROM sales_data
GROUP BY region
ORDER BY Total_Sales DESC;

SELECT
    region,
    ROUND(SUM(profit),2) AS Total_Profit
FROM sales_data
GROUP BY region
ORDER BY Total_Profit DESC;

SELECT
    segment,
    ROUND(SUM(sales),2) AS Total_Sales
FROM sales_data
GROUP BY segment
ORDER BY Total_Sales DESC;

SELECT
    segment,
    ROUND(SUM(profit),2) AS Total_Profit
FROM sales_data
GROUP BY segment
ORDER BY Total_Profit DESC;

SELECT
    ship_mode,
    ROUND(SUM(sales),2) AS Total_Sales
FROM sales_data
GROUP BY ship_mode
ORDER BY Total_Sales DESC;

SELECT
    ship_mode,
    ROUND(SUM(profit),2) AS Total_Profit
FROM sales_data
GROUP BY ship_mode
ORDER BY Total_Profit DESC;

SELECT
    category,
    ROUND(AVG(discount),2) AS Avg_Discount
FROM sales_data
GROUP BY category
ORDER BY Avg_Discount DESC;

SELECT
    segment,
    ROUND(AVG(discount),2) AS Avg_Discount
FROM sales_data
GROUP BY segment
ORDER BY Avg_Discount DESC;

SELECT
    sub_category,
    ROUND(SUM(profit),2) AS Profit
FROM sales_data
GROUP BY sub_category
ORDER BY Profit DESC
LIMIT 10;

SELECT
    sub_category,
    ROUND(SUM(profit),2) AS Loss
FROM sales_data
GROUP BY sub_category
ORDER BY Loss ASC
LIMIT 10;

SELECT
    state,
    ROUND(AVG(discount),2) AS Avg_Discount
FROM sales_data
GROUP BY state
ORDER BY Avg_Discount DESC
LIMIT 10;

SELECT
    category,
    ROUND(SUM(sales),2) AS Sales,
    ROUND((SUM(sales)/(SELECT SUM(sales) FROM sales_data))*100,2) AS Sales_Percentage
FROM sales_data
GROUP BY category;

SELECT
    category,
    ROUND(SUM(profit),2) AS Profit,
    ROUND((SUM(profit)/(SELECT SUM(profit) FROM sales_data))*100,2) AS Profit_Percentage
FROM sales_data
GROUP BY category;

SELECT
    state,
    ROUND(SUM(sales),2) AS Sales
FROM sales_data
GROUP BY state
ORDER BY Sales DESC
LIMIT 1;

SELECT
    state,
    ROUND(SUM(profit),2) AS Profit
FROM sales_data
GROUP BY state
ORDER BY Profit DESC
LIMIT 1;

SELECT
    state,
    ROUND(SUM(profit),2) AS Total_Profit
FROM sales_data
GROUP BY state
HAVING SUM(profit) < 0
ORDER BY Total_Profit;

SELECT
    discount,
    ROUND(AVG(profit),2) AS Avg_Profit,
    ROUND(SUM(sales),2) AS Sales
FROM sales_data
GROUP BY discount
ORDER BY discount;

SELECT
    category,
    SUM(quantity) AS Quantity_Sold
FROM sales_data
GROUP BY category
ORDER BY Quantity_Sold DESC;

SELECT
    region,
    SUM(quantity) AS Quantity_Sold
FROM sales_data
GROUP BY region
ORDER BY Quantity_Sold DESC;

SELECT
    segment,
    ROUND((SUM(profit)/SUM(sales))*100,2) AS Profit_Margin
FROM sales_data
GROUP BY segment;

SELECT
    category,
    ROUND((SUM(profit)/SUM(sales))*100,2) AS Profit_Margin
FROM sales_data
GROUP BY category;

SELECT
    ROUND(SUM(sales)/SUM(quantity),2) AS Sales_Per_Unit
FROM sales_data;

SELECT
    ROUND(AVG(profit),2) AS Avg_Profit_Per_Order
FROM sales_data;

SELECT
    category,
    COUNT(*) AS Orders,
    SUM(quantity) AS Quantity,
    ROUND(SUM(sales),2) AS Sales,
    ROUND(SUM(profit),2) AS Profit,
    ROUND(AVG(discount),2) AS Avg_Discount
FROM sales_data
GROUP BY category
ORDER BY Sales DESC;

SELECT
    segment,
    COUNT(*) AS Orders,
    SUM(quantity) AS Quantity,
    ROUND(SUM(sales),2) AS Sales,
    ROUND(SUM(profit),2) AS Profit,
    ROUND(AVG(discount),2) AS Avg_Discount
FROM sales_data
GROUP BY segment;

SELECT
    COUNT(*) AS Total_Orders,
    SUM(quantity) AS Total_Quantity,
    ROUND(SUM(sales),2) AS Total_Sales,
    ROUND(SUM(profit),2) AS Total_Profit,
    ROUND(AVG(sales),2) AS Average_Order_Value,
    ROUND(AVG(discount),2) AS Average_Discount,
    ROUND((SUM(profit)/SUM(sales))*100,2) AS Profit_Margin
FROM sales_data;