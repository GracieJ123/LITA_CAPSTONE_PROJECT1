# LITA_CAPSTONE_PROJECT

[PROJECT OVERVIEW](#project-overview)

[DATA SOURCES](#data-sources)

[TOOLS USED](#tools-used)

[DATA CLEANING AND PREPARATION](#data-cleaning-and-preparation)

[EXPLORATORY AND ANALYSIS](#exploratory-and-analysis)

[DATA ANALYSIS](#data-analysis)

[VISUALIZATION](#visualization)


### PROJECT OVERVIEW
----
This data analysis aims to generate insight into the sales performance of a retail store.
So the need for exploration of the sales data to uncover key insights, to make reasonable decisions which enable to tell compelling stories and know the performances from our data.
 
### DATA SOURCES
----
The Primary Source of the Data Used here, LITA Capstone Dataset.xlsx

### TOOLS USED
----
- Microsoft Excel for 
  i.	Data Cleaning 
  ii.	Data Analysis
  iii.	Data VIsualisaton

-Excel for querying
-PowerBi for Visualisation and giving a compelling report
-Github for portfolio building

### DATA CLEANING AND PREPARATION
----
  i.	Data Loading and Inspection
  ii.	Handling missing variables
  iii.	Data Cleaning and Formatting
  
### EXPLORATORY AND ANALYSIS
----
This involves the exploration of the Data to answer question such as:
 -top-selling products.
 -regional performance. 
 -monthly sales trends.

### DATA ANALYSIS
----
Below are some codes used during the exploration
```SQL
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
```
### RESULTS FROM EXCEL
<img width="941" alt="EXCEL SALES DATA 1" src="https://github.com/user-attachments/assets/54b1b68d-1bf1-4593-977b-3f7aa21db877">

<img width="959" alt="EXCEL SALES DATA 2" src="https://github.com/user-attachments/assets/d203a1e2-5439-40fd-a64c-d98573e021d5">

<img width="959" alt="EXCEL SALES DATA 3" src="https://github.com/user-attachments/assets/da11e038-9c3e-4a72-9735-8556a9adeed6">

<img width="776" alt="PIVOT TABLE SALES DATA" src="https://github.com/user-attachments/assets/c77b8c14-c8e8-4ef3-9e65-d4df2c09f3f5">

<img width="953" alt="EXCEL CONSUMER DATA" src="https://github.com/user-attachments/assets/d9084dd8-c5c8-45ad-b7c2-4875b5f03ce3">

<img width="959" alt="EXCEL" src="https://github.com/user-attachments/assets/7ed32515-d745-482f-a6a0-ec15d3aef14c">

### RESULTS FROM SQL

![sql 1](https://github.com/user-attachments/assets/26e0a402-7f90-4593-852e-80b2e6a1b0d8)

![SQL2](https://github.com/user-attachments/assets/84d65813-25ad-4c66-8d59-224c19e323ef)

![SQL3](https://github.com/user-attachments/assets/e4fd6eff-89ea-4c2d-ae93-626143c63257)

![SQL4](https://github.com/user-attachments/assets/43839931-1647-4d25-ae3f-ddcf546a0b38)

![SQL5](https://github.com/user-attachments/assets/1d6b51c7-eb1b-47c3-bb86-e207899c1bb7)

![SQL6](https://github.com/user-attachments/assets/fd75c56c-a76b-4dea-9820-c650b22a3ca9)

![SQL7](https://github.com/user-attachments/assets/8b0176aa-4444-4455-80dd-f63ec8a966b1)

![SQL8](https://github.com/user-attachments/assets/9c3a7e94-f4c0-49d7-b0ce-119d1d842993)




### VISUALIZATION
----
