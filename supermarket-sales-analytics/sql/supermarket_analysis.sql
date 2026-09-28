USE supermarket_project;

DROP TABLE IF EXISTS supermarket_sales;

CREATE TABLE supermarket_sales (
    invoice_id VARCHAR(50),
    branch VARCHAR(10),
    city VARCHAR(50),
    customer_type VARCHAR(20),
    gender VARCHAR(20),
    product_line VARCHAR(100),
    unit_price DECIMAL(10,2),
    quantity INT,
    tax_5_percent DECIMAL(10,2),
    total DECIMAL(10,2),
    date DATE,
    time TIME,
    payment VARCHAR(30),
    cogs DECIMAL(10,2),
    gross_margin_percentage DECIMAL(10,2),
    gross_income DECIMAL(10,2),
    rating DECIMAL(3,1),
    month INT,
    month_name VARCHAR(20),
    day_of_week VARCHAR(20)
);
SELECT
    SUM(total) AS total_sales
FROM supermarket_sales;
SELECT
    SUM(gross_income) AS total_gross_income
FROM supermarket_sales;
SELECT
    COUNT(DISTINCT invoice_id) AS total_transactions
FROM supermarket_sales;
SELECT
    AVG(total) AS average_transaction_value
FROM supermarket_sales;
SELECT
    branch,
    SUM(total) AS total_sales
FROM supermarket_sales
GROUP BY branch
ORDER BY total_sales DESC;
SELECT
    branch,
    SUM(gross_income) AS total_gross_income
FROM supermarket_sales
GROUP BY branch
ORDER BY total_gross_income DESC;
SELECT
    product_line,
    SUM(total) AS total_sales,
    SUM(quantity) AS total_quantity,
    SUM(gross_income) AS total_gross_income
FROM supermarket_sales
GROUP BY product_line
ORDER BY total_sales DESC;
SELECT
    customer_type,
    COUNT(DISTINCT invoice_id) AS transactions,
    SUM(total) AS total_sales,
    AVG(total) AS average_transaction
FROM supermarket_sales
GROUP BY customer_type
ORDER BY total_sales DESC;
SELECT
    customer_type,
    COUNT(DISTINCT invoice_id) AS transactions,
    SUM(total) AS total_sales,
    AVG(total) AS average_transaction
FROM supermarket_sales
GROUP BY customer_type
ORDER BY total_sales DESC;
SELECT 
    payment, COUNT(*) AS transactions, SUM(total) AS total_sales
FROM
    supermarket_sales
GROUP BY payment
ORDER BY total_sales DESC;
SELECT
    month,
    SUM(total) AS total_sales
FROM supermarket_sales
GROUP BY month
ORDER BY month;
SELECT
    day_of_week,
    SUM(total) AS total_sales,
    COUNT(DISTINCT invoice_id) AS transactions
FROM supermarket_sales
GROUP BY day_of_week
ORDER BY total_sales DESC;
SELECT
    hour,
    SUM(total) AS total_sales,
    COUNT(DISTINCT invoice_id) AS transactions
FROM supermarket_sales
GROUP BY hour
ORDER BY hour;
SELECT
    branch,
    product_line,
    SUM(total) AS total_sales,
    SUM(gross_income) AS gross_income
FROM supermarket_sales
GROUP BY
    branch,
    product_line
ORDER BY
    branch,
    total_sales DESC;
    SELECT
    product_line,
    SUM(total) AS total_sales,
    RANK() OVER (
        ORDER BY SUM(total) DESC
    ) AS sales_rank
FROM supermarket_sales
GROUP BY product_line;
USE supermarket_project;

DROP TABLE IF EXISTS supermarket_sales;

CREATE TABLE supermarket_sales (
    invoice_id VARCHAR(50),
    branch VARCHAR(10),
    city VARCHAR(50),
    customer_type VARCHAR(20),
    gender VARCHAR(20),
    product_line VARCHAR(100),
    unit_price DECIMAL(10,2),
    quantity INT,
    tax_5_percent DECIMAL(10,2),
    total DECIMAL(10,2),
    date DATE,
    time TIME,
    payment VARCHAR(30),
    cogs DECIMAL(10,2),
    gross_margin_percentage DECIMAL(10,2),
    gross_income DECIMAL(10,2),
    rating DECIMAL(3,1),
    month INT,
    month_name VARCHAR(20),
    day_of_week VARCHAR(20),
    hour INT
);
SELECT 
    product_line,
    SUM(total) AS total_sales,
    RANK() OVER (
        ORDER BY SUM(total) DESC
    ) AS sales_rank
FROM supermarket_sales
GROUP BY product_line;
