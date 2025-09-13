# Coffee-sales-analysis-

This project analyzes a coffee shop’s transaction dataset to uncover sales trends, customer behavior, and product performance. It combines SQL queries for data exploration with a Power BI dashboard for interactive visualization.

The goal is to demonstrate beginner-to-intermediate level skills in SQL data analysis and Power BI reporting.

# Files in Repository
 
- Coffee sales sql query.sql → SQL queries used for data cleaning and analysis.

- Power BI Dashboard (.pbix file) → Interactive report with KPIs, charts, and slicers.

- Dataset (index.csv) → Raw transaction-level data with date, time, product, payment type, and sales amount.

# Data Preparation (SQL)

Key SQL steps included in Coffee sales sql query.sql:

- Data Cleaning

   Replaced NULL card values with 'CASH' for consistency.

- Sales Trends

   SELECT date, SUM(money) AS daily_sales
   FROM [dbo].[index]
   GROUP BY date
   ORDER BY date;
 
- Best-Selling Products

  SELECT coffee_name, COUNT(*) AS total_sold, SUM(money) AS total_revenue
  FROM [dbo].[index]
  GROUP BY coffee_name
  ORDER BY total_revenue DESC;

- Payment Method Split

  Compared transactions and revenue from cash vs card.

- Customer Behavior (Card Users)

  Repeat customers, total visits, and spending.

- Peak Hour of Sales

  Identified busiest hours using DATEPART(HOUR, datetime)

# Power BI Dashboard

 The Power BI dashboard visualizes the SQL insights with interactive charts:
 
 KPIs:

  - Total Revenue
  
  - Total Transactions
  
  - Average Spend per Transaction
  
  - Distinct Card Customers

 Visuals:

  - Donut chart → Revenue by Payment Method
  
  - Bar chart → Revenue by Coffee Type
  
  - Line chart → Sales Trends (Year/Quarter/Month)
  
  - Heatmap → Transactions by Day & Hour
  
  - Column chart → Transactions by Hour (AM/PM format)

 Filters (Slicers):

  - Date range
  
  - Coffee type
  
  - Payment method

# Key Insights

 - Latte, Americano with Milk, and Cappuccino are the top revenue-generating drinks.

 - Card payments dominate (over 90% of sales).

 - Sales peak around 11 AM — clear morning rush.

 - Weekdays (especially Wednesday & Thursday) see higher transaction counts.

 - Several repeat card customers contribute significantly to revenue.

# How to Use

- Run the SQL queries in Coffee sales sql query.sql to explore the data in a database (SQL Server).

- Open the Power BI .pbix file to interact with the dashboard.

- Use slicers to filter by date, coffee type, or payment method for deeper analysis

# Tech Stack

- SQL Server (T-SQL)
  
- Power BI Desktop
  
- CSV Dataset

 Author 
 Simran Ramani
  
  
