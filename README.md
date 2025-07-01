🛒 Blinkit Sales Analysis (SQL Project)

This project includes SQL queries and data exploration steps carried out on the "Blinkit Sales Dataset", obtained from Kaggle. The objective is to analyze the sales of items, the distribution of fat content, ratings, outlet performance, and sales trends at different dimensions such as year, item type, outlet type, and location.

📊 Dataset Overview

The dataset used (`BlinkIT_Grocery_Data`) includes the following key columns:

• Item_Identifier: A unique ID for each product in the dataset.
•	Item_Weight: The weight of the product.
•	Item_Fat_Content: Indicates whether the product is low fat or not.
•	Item_Visibility: The percentage of the total display area in the store that is allocated to the specific product.
•	Item_Type: The category or type of product.
•	Item_MRP: The maximum retail price (list price) of the product.
•	Outlet_Identifier: A unique ID for each store in the dataset.
•	Outlet_Establishment_Year: The year in which the store was established.
•	Outlet_Size: The size of the store in terms of ground area covered.
•	Outlet_Location_Type: The type of city or region in which the store is located.
•	Outlet_Type: Indicates whether the store is a grocery store or a supermarket.
•	Item_Outlet_Sales: The sales of the product in the particular store. This is the outcome variable that we want to predict.

🛠️ Project Goals

- Clean and standardize the data
- Perform aggregations (SUM, AVG, COUNT)
- Analyze sales by category, fat content, outlet location/type/year
- Use SQL features like `CAST`, `PIVOT`, `GROUP BY`, and `ORDER BY`
- Provide business insights based on metrics

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

💡 Business Insights (Examples)

- "Low Fat" products account for a large proportion of total sales.
- Certain item types and store types perform better than others in both average sales and overall revenue.
- More recently opened stores (after 2010) are reporting higher sales and customer reviews.
- Store location and size directly impact revenue proportion.

🧰 Tools & Technologies

- "SQL Server / MySQL / PostgreSQL" (Queries are written in ANSI SQL and easily portable)
- Data sourced from "Kaggle" : https://www.kaggle.com/datasets/mukeshgadri/blinkit-dataset?select=Tableau+BlinkIT+Grocery+Project+U16955293080+%284%29.xlsx

📁 File Structure 

```bash
📦Blinkit-Sales-Analysis-SQL-Project
 ┣ 📜 BLINKIT_SQL_QUERY.sql      # All SQL queries for analysis
 ┣ 📊 BlinkIT_Grocery_Data.csv         # (Optional) Sample dataset from Kaggle
 ┗ 📄 README.md                # Project overview and documentation
