create database coffee_sales

UPDATE [dbo].[index]
SET card = 'CASH'
WHERE card IS NULL;

-- sales trends--
SELECT date, SUM(money) AS daily_sales
FROM [dbo].[index]
GROUP BY date
ORDER BY date;

--Best selling coffee
SELECT coffee_name, COUNT(*) AS total_sold, SUM(money) AS total_revenue
FROM [dbo].[index]
GROUP BY coffee_name
ORDER BY total_revenue DESC;


--Payment Method split
SELECT cash_type, COUNT(*) AS transactions, SUM(money) AS revenue
FROM [dbo].[index]
GROUP BY cash_type;

--Customer Behaviour (for card users)
SELECT card, COUNT(*) AS visits, SUM(money) AS total_spent
FROM [dbo].[index]
WHERE card IS NOT NULL
GROUP BY card
ORDER BY total_spent DESC;


--Peak hour of sales
SELECT DATEPART(HOUR, datetime) AS hour, 
       SUM(money) AS revenue
FROM [dbo].[index]
GROUP BY DATEPART(HOUR, datetime)
ORDER BY revenue DESC;





