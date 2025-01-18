# Provide-Insights-to-Management-in-Consumer-Goods-Domain-Ad-hoc-Analysis-
## Project Overview

This project is based on the consumer goods domain, focusing on providing actionable business insights to management through data analysis. The aim of the project is to help Atliq Hardwares (an imaginary company) expand its data analytics team by using SQL and Excel. The insights generated through SQL queries will help management make data-informed decisions regarding product performance, sales, market expansion, and customer strategies. Excel is used for visual representation and presenting insights through various charts.

## Problem Statement

Atliq Hardwares is looking for key insights to enhance its data-driven decision-making. The company seeks to analyze various business aspects like sales, customer behavior, product performance, and market presence. The analysis will be performed on multiple datasets, and the results will help management with strategic decisions.

### Ad-Hoc Requests:

The following ad-hoc requests were made to extract data insights:

1. **Provide the list of markets in which customer "Atliq Exclusive" operates its business in the APAC region.**
2. **What is the percentage of unique product increase in 2021 vs. 2020?**
3. **Provide a report with all the unique product counts for each segment, sorted in descending order of product counts.**
4. **Which segment had the most increase in unique products in 2021 vs. 2020?**
5. **Get the products that have the highest and lowest manufacturing costs.**
6. **Generate a report containing the top 5 customers who received an average high pre-invoice discount percentage for fiscal year 2021 in the Indian market.**
7. **Get the complete report of the Gross Sales amount for the customer “Atliq Exclusive” for each month.**
8. **In which quarter of 2020 did the maximum total sold quantity occur?**
9. **Which channel helped to bring more gross sales in fiscal year 2021 and the percentage of contribution?**
10. **Get the Top 3 products in each division that have the highest total sold quantity in fiscal year 2021.**

## Technologies Used

- **SQL**: For performing complex queries to extract data from the database, providing insights based on ad-hoc requests.
- **Excel**: For visualizing the data, creating charts, and summarizing insights for management. Excel was used to generate tables and graphs that effectively communicate trends, percentages, and changes in metrics.

## Approach and Solution

### SQL Queries
To solve the business questions, I designed SQL queries that:
1. **Filtered Data**: For specific years, markets, customers, and sales channels.
2. **Aggregated Data**: Using `COUNT`, `SUM`, and `AVG` to summarize the sales, product counts, and customer discounts.
3. **Calculated Percentages**: By comparing values from different periods (e.g., 2020 vs. 2021) to compute growth rates, such as the percentage change in unique products.
4. **Ranked Data**: Used ranking functions (like `RANK()`) to identify top performers in different segments.
5. **Grouped Data**: Grouped data by key business attributes such as market, product segment, or fiscal year to analyze trends.

### Excel Visualization
After extracting the required data using SQL queries, the next step was to visualize the results in Excel:
1. **Tables and Pivot Tables**: For presenting organized results and summaries.
2. **Charts**: Created bar charts, line charts, and pie charts to illustrate the changes in sales, product counts, and market shares.

### Key Insights & Actionable Strategies
For each of the ad-hoc requests, insights were generated that could help Atliq Hardwares' management in their decision-making. For example:
- Identifying the top-performing sales channels and their contribution to total gross sales.
- Analyzing product performance across different segments to focus on high-performing products.
- Understanding market presence in the APAC region to plan for expansion or reinvestment.

## Business Insights Derived
- **Market Expansion**: The analysis of markets where "Atliq Exclusive" operates can guide future expansion strategies.
- **Product Development**: Understanding which products have experienced growth (or decline) helps guide product development and inventory strategies.
- **Sales Channel Optimization**: By identifying which channels contribute the most to gross sales, management can allocate resources more effectively.
- **Customer Insights**: Insights into customers who received high discounts can inform pricing strategies and customer segmentation.
