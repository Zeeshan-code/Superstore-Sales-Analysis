SELECT Product_Name,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;