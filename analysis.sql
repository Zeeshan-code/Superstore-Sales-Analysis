SELECT Order_Year, Order_Month,
       ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM superstore
GROUP BY Order_Year, Order_Month
ORDER BY Order_Year, Order_Month;