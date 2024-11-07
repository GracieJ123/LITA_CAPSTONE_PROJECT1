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
### DATA SOURCES
----
The Primary Source of the Data Used here are as follows,

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

### DATA ANALYSIS
----
Below are some codes used during the exploration
```SELECT
	Product,
	SUM(UnitPrice*Quantity) AS Total_Sales
	FROM
	[dbo].[Capstone_Sales]
	GROUP BY
	Product
```

### VISUALIZATION
----
