CREATE DATABASE CAPSTONE_PROJECT
SELECT * FROM Capstone_Sales

-----Retrieve the total sales for each product category

SELECT
	Product,
	SUM(UnitPrice*Quantity) AS Total_Sales
	FROM
	[dbo].[Capstone_Sales]
	GROUP BY
	Product

------- The number of sales transactions in each region.

SELECT Region,
	COUNT (*) AS Transcation_Count
FROM
	[dbo].[Capstone_Sales]
GROUP BY
	Region

---------- The highest-selling product by total sales value.

SELECT
	Product,
	SUM(Quantity * UnitPrice) AS Highest_Selling_Products
FROM 
	[dbo].[Capstone_Sales]
GROUP BY
	Product

--------- Total revenue per product.

SELECT

	SUM (UnitPrice * Quantity) AS Total_Revenue
FROM
	[dbo].[Capstone_Sales]
GROUP BY
	Product

------- Monthly sales totals for the current year.

SELECT
	Month(OrderDate) as month,
	SUM(Sales) AS Monthly_Sales
FROM
	[dbo].[Capstone_Sales]
WHERE
	YEAR(OrderDate) = YEAR(GETDATE())
GROUP BY
	MONTH(OrderDate)
ORDER BY
	Month

------Top 5 customers by total purchase amount.

SELECT TOP 5 Orderid, Region,
	SUM(Sales) AS Total_Purchase_Amount
FROM 
	[dbo].[Capstone_Sales]
GROUP BY 
	Orderid, Region
ORDER BY 
	SUM(Sales) DESC

------ The percentage of total sales contributed by each region.
SELECT Region,
	SUM(Sales) AS Total_Sales,
	(SUM(Sales) * 100.0 / (SELECT SUM(Sales) FROM [dbo].[Capstone_Sales])) AS Percentage_of_Total_Sales
FROM
	[dbo].[Capstone_Sales]
GROUP BY
	Region
ORDER BY
	Percentage_of_Total_Sales DESC

-------- identify products with no sales in the last quarter.
SELECT distinct Product
FROM 
	[dbo].[Capstone_Sales]
WHERE 
	Product NOT IN(
SELECT 
	Product
FROM 
	[dbo].[Capstone_Sales]
WHERE OrderDate >= DATEADD(Month, -1,GETDATE())
	)
ORDER BY Product



