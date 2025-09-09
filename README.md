🛒 Blinkit Sales Analysis (Python + SQL + Power BI Project)

This project focuses on the analysis of sales data using Python for data cleaning and exploration, SQL for data querying and insights, and Power BI for interactive visualization. 

The goal is to find trends in sales, product performance, outlet presence/distribution, etc., and provide actionable business insights.

📊 Dataset Overview

The dataset used (`BlinkIT_Grocery_Data`) includes the following key columns:

- Item_Identifier: A unique ID for each product in the dataset.
-	Item_Weight: The weight of the product.
-	Item_Fat_Content: Indicates whether the product is low fat or not.
-	Item_Visibility: The percentage of the total display area in the store that is allocated to the specific product.
-	Item_Type: The category or type of product.
-	Item_MRP: The maximum retail price (list price) of the product.
-	Outlet_Identifier: A unique ID for each store in the dataset.
-	Outlet_Establishment_Year: The year in which the store was established.
-	Outlet_Size: The size of the store in terms of ground area covered.
-	Outlet_Location_Type: The type of city or region in which the store is located.
-	Outlet_Type: Indicates whether the store is a grocery store or a supermarket.
-	Item_Outlet_Sales: The sales of the product in the particular store. This is the outcome variable that we want to predict.

🛠️ Project Goals

🛠️ Project Goals
- Clean and normalize the data using Python
- Execute aggregations (SUM, AVG, COUNT) using SQL
- Examine sales by category, fat content, outlet location/type/year
- Utilize SQL functionalities such as CAST, PIVOT, GROUP BY, and ORDER BY
- Develop an interactive Power BI dashboard for visualization
- Deliver business insights based on key metrics

🐍 Python Data Cleaning & Exploration

The Python script (BlinkIT_Analysis.ipynb) performs the following:

✅ Data Cleaning

- Standardized Item_Fat_Content values to "Low Fat" and "Regular"
- Handled missing values in Item_Weight

📈 Key Performance Indicators (KPIs)

- Total Sales: $1,201,681
- Average Sales: $141
- Number of Items Sold: 8,523
- Average Rating: 4.0

📊 Visualization

- Sales by Fat Content: Pie chart showing Low Fat vs Regular sales distribution
- Sales by Item Type: Bar chart (planned for Power BI)

📌 Key SQL Queries

✅ Data Exploration

- View all data:  
  `SELECT * FROM blinkit_data`
- Count total number of items:  
  `SELECT COUNT(*) AS No_Of_Items FROM blinkit_data`
- Standardize `Item_Fat_Content` values to "Low Fat" and "Regular"

📈 Sales Analysis

- Total sales:  
  `SUM(Sales)` and `SUM(Sales) / 1,000,000` (in millions)
- Average sales and rating
- Total sales of "Low Fat" items
- Total sales for the year 2022

🔍 Grouped Analysis

- Sales and ratings by `Item_Fat_Content` (in 2022)
- Top 5 item types by total sales
- Sales by outlet establishment year
- Sales percentage by `Outlet_Size`
- Sales by `Outlet_Location_Type`
- Sales breakdown by `Outlet_Type`

📊 Power BI Dashboard

A Power BI dashboard was created to visualize sales performance and outlet insights.

🔑 Dashboard Highlights

- Total Sales: $1.20M
- No. of Items: 8,523
- Average Sales: $141
- Average Rating: 3.9
- Sales by Item Type: Frozen Foods, Dairy, Household, Snacks are top contributors
- Fat Content Analysis: Low Fat vs Regular sales split
- Outlet Establishment Trend: Peak sales observed in 2018
- Sales by Outlet Size: Medium outlets perform the best
- Sales by Outlet Location: Tier 3 cities lead in sales
- Outlet Type Comparison: Supermarket Type1 contributes ~65% of total revenue

💡 Business Insights

- "Low Fat" products account for a large proportion of total sales.
- Certain item types and store types perform better than others in both average sales and overall revenue.
- Medium-sized outlets and Tier 3 locations generate the highest revenue.
- Sales peaked in 2018, followed by stabilization.
- Supermarkets, particularly Type1, are the major contributors.
- More recently opened stores (after 2010) are reporting higher sales and customer reviews.
- Frozen Foods, Dairy, and Household items drive consistent sales.
- Store location and size directly impact revenue proportion.

🧰 Tools & Technologies

- Python (Pandas, Matplotlib, Seaborn) – Data cleaning and visualization
- "SQL Server / MySQL / PostgreSQL" (Queries are written in ANSI SQL and easily portable) – Data querying and analysis
- Power BI – Dashboard creation & data visualization
- Dataset Download: [BlinkIT Grocery Data](https://www.kaggle.com/datasets/mukeshgadri/blinkit-dataset?select=Tableau+BlinkIT+Grocery+Project+U16955293080+%284%29.xlsx)

📈 How to Use

- Download the dataset from Kaggle and place it in the project directory.
- Run the Jupyter notebook BlinkIT_Analysis.ipynb to clean and explore the data.
- Execute the SQL queries in your preferred database environment.
- Open the Power BI file to interact with the dashboard.

