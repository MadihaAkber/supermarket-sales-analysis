# Supermarket Sales & Customer Analytics

## Project Overview

This project presents an end-to-end analysis of supermarket transaction data using **Python, SQL, and Power BI**.

The objective was to analyse sales performance, customer purchasing behaviour, product performance, branch performance, payment preferences, and time-based sales patterns. The project demonstrates the complete data analytics workflow, from data cleaning and exploratory analysis to SQL-based business analysis and interactive dashboard development.

The dataset contains **1,000 supermarket transactions** across three branches and includes information on product categories, customer types, payment methods, sales values, quantities, gross income, ratings, dates, and transaction times.

## Business Questions

The analysis was designed to answer several key business questions:

- How much revenue and gross income did the supermarket generate?
- Which branches generated the highest revenue?
- Which product categories performed best?
- Which categories sold the greatest number of units?
- How did members and normal customers differ in purchasing behaviour?
- Which payment methods were most commonly used?
- Which days and hours generated the highest sales activity?
- How did revenue change across the three-month period?

---

## Tools Used

### Python
Used for data cleaning, transformation, exploratory data analysis, feature engineering, and initial visualisation.

Key libraries:
- Pandas
- Matplotlib

### SQL
Used to answer business questions and perform deeper analysis using:
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregate functions
- CASE statements
- Subqueries
- Common Table Expressions (CTEs)
- Window functions
- RANK()
- PARTITION BY
- LAG()
- Running totals
- Percentage calculations

### Power BI
Used to create an interactive three-page business intelligence dashboard with:
- KPI cards
- Bar and column charts
- Line charts
- Tables
- Slicers
- DAX measures
- Interactive filtering

---

## Data Cleaning and Preparation

The raw dataset was cleaned and prepared using Python.

The main preparation steps included:

- Inspecting dataset structure and data types
- Checking for missing values
- Checking for duplicate records
- Standardising column names
- Converting date and time fields into appropriate formats
- Creating additional time-based features
- Validating categorical values
- Performing exploratory analysis
- Exporting the cleaned dataset for SQL and Power BI analysis

Additional fields created included:

- Year
- Month
- Month Name
- Day of Week
- Hour

The final cleaned dataset contained **1,000 transactions** ready for further analysis.

---

## SQL Analysis

SQL was used to analyse supermarket performance across multiple business dimensions.

The analysis included:

- Overall revenue and gross income
- Total transactions and units sold
- Average transaction value
- Branch performance
- Product category performance
- Customer segment analysis
- Payment method analysis
- Monthly sales trends
- Day-of-week performance
- Hourly sales patterns
- Product performance within individual branches
- Revenue contribution percentages
- Transaction value segmentation
- Product and branch ranking
- Running revenue totals
- Month-on-month revenue changes

Advanced SQL techniques such as **CTEs, window functions, RANK(), LAG(), CASE statements, and subqueries** were used alongside standard aggregation queries.

---

## Power BI Dashboard

The Power BI report contains three interactive pages.

### 1. Executive Overview

Provides a high-level view of supermarket performance, including:

- Total Revenue
- Total Gross Income
- Total Transactions
- Average Transaction Value
- Revenue by Branch
- Revenue by Product Category
- Monthly Revenue Trend
- Transactions by Payment Method

Interactive slicers allow analysis by branch, product category, customer type, and payment method.

### 2. Product & Customer Analysis

Provides deeper analysis of:

- Product category performance
- Revenue by customer type
- Average transaction value by customer type
- Revenue by gender
- Average customer rating by product category
- Units sold and gross income

### 3. Sales Trends

Focuses on when supermarket sales occur, including:

- Monthly revenue trends
- Revenue by day of week
- Revenue by hour
- Transactions by hour
- Gross income trends
- Date-based filtering

---

## Dashboard Screenshots

### Executive Overview

![Executive Overview](screenshots/executive_overview.png)

### Product & Customer Analysis

![Product and Customer Analysis](screenshots/product_customer_analysis.png)

### Sales Trends

![Sales Trends](screenshots/sales_trends.png)

---

## Key Insights

### Branch Performance

**Branch C (Naypyitaw) generated the highest revenue at 110,568.71, representing approximately 34.24% of total revenue.**

Although Branch A recorded more transactions, Branch C achieved the highest average transaction value at 337.10, indicating that customers at Branch C spent more per transaction on average.

### Product Performance

**Food & Beverages was the highest-revenue product category, generating 56,144.84.**

However, **Electronic Accessories recorded the highest sales volume with 971 units sold**, demonstrating that the category selling the most units was not necessarily the category generating the highest revenue.

### Customer Behaviour

**Members generated 164,223.44 in revenue compared with 158,743.31 from normal customers.**

Member revenue was approximately **3.45% higher**, while their average transaction value was approximately **3.04% higher** than that of normal customers.

This indicates an association between membership status and slightly higher customer spending within this dataset.

### Peak Trading Hours

**19:00 was the highest-revenue hour**, generating approximately **39,699.51 from 113 transactions**.

The data indicates particularly strong sales activity during this evening period.

### Weekly Sales Performance

**Saturday was the highest-revenue day**, generating approximately **56,120.81 from 164 transactions**.

Monday generated the lowest revenue at approximately **37,899.08**, meaning Saturday revenue was around **48% higher than Monday revenue**.

### Monthly Performance

Revenue was highest in **January at 116,291.87**, declined to **97,219.37 in February**, and recovered to **109,455.51 in March**.

The dataset covers only three months, so a longer time period would be required before concluding that these movements represent a recurring seasonal trend.

### Payment Behaviour

**Cash generated the highest revenue at approximately 112,206.57**, while **E-wallet recorded the highest number of transactions at 345**.

This demonstrates the importance of considering both transaction volume and transaction value when analysing payment behaviour.

---

## Business Recommendations

Based on the analysis:

- Investigate the product mix and customer purchasing patterns at **Branch C** to understand the factors associated with its higher average transaction value and whether relevant practices could be applied to other branches.
- Consider both **revenue and unit volume** when evaluating product performance, as the highest-selling category by quantity was not the highest-revenue category.
- Further investigate the relationship between **membership and customer spending** and evaluate opportunities to increase membership engagement.
- Ensure appropriate **staffing and checkout capacity around peak trading periods**, particularly around 19:00.
- Align inventory and staffing with stronger **Saturday demand** while investigating opportunities to improve lower-performing periods such as Monday.
- Continue monitoring monthly performance over a longer period before making conclusions about seasonality or long-term sales trends.

---

## Limitations

This project uses a relatively small dataset of **1,000 transactions covering three months**.

The analysis should therefore be interpreted as a portfolio business analytics exercise rather than a representation of long-term supermarket performance.

The dataset provides **gross income** but does not provide all operating expenses required to calculate true net profit. For this reason, the analysis reports gross income rather than referring to it as net profit.

A longer dataset containing additional customer, inventory, cost, promotion, and historical information would allow more advanced analysis.

---

## Project Structure

```text
supermarket-sales-analytics/
│
├── data/
│   └── supermarket_sales_cleaned.csv
│
├── python/
│   └── supermarket_sales_analysis.ipynb
│
├── sql/
│   └── supermarket_analysis.sql
│
├── powerbi/
│   └── supermarket_sales.pbix
│
├── screenshots/
│   ├── executive_overview.png
│   ├── product_customer_analysis.png
│   └── sales_trends.png
│
└── README.md
```

---

## Skills Demonstrated

**Data Cleaning • Exploratory Data Analysis • Python • Pandas • SQL • CTEs • Window Functions • DAX • Power BI • Data Visualisation • KPI Development • Business Analysis • Data Storytelling**

---

## Project Outcome

This project demonstrates an end-to-end data analytics workflow: transforming raw transactional data into structured analysis, investigating business questions using SQL, and communicating the resulting insights through an interactive Power BI dashboard.
