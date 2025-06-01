# Superstore-sales-analysis
This project analyses the Superstore sales dataset using python ,SQL and Power Bi. It focuses on identifying sales trends, key products, Profit-driving categories, regional performance and discount impacts. The goal is to provide data-driven insights that help improve business strategy, inventory management and customer segmentation

Project Tools
Tool used: Visual studio code (VS code), Python, SQL(My sql)
 

Set up Kaggle API
API Setup: Obtain your Kaggle API token from Kaggle by navigating to your profile settings and downloading the JSON file.
Configure Kaggle:
Place the downloaded kaggle.json file in your local .kaggle folder.
Use the command kaggle datasets download -d <dataset-path> to pull datasets directly into your project.

Download Superstore Sales Data
1. Data Source: Use the Kaggle API to download the Walmart sales datasets from Kaggle.
2. Dataset Link: superstore-dataset-final

Install Required Libraries and Load Data
1. Libraries: Install necessary Python libraries using:
pip install pandas numpy sqlalchemy mysql-connector-python psycopg2
2.Loading Data: Read the data into a Pandas DataFrame for initial analysis and transformations.

Explore the Data
Goal: Make sure the structure and content of the dataset is correct and the dataset shouldn't have any missing values, duplicates or incorrect data types.
Analysi: Use fuction like .head(), .info(), .describe() to quick review of the data.
1. Used .isnull().sum() to detect missing values.
2. Used .duplicated().sum() to check duplicate value.

Basic Descriptive stats
1. Used .describe() to get summary statistics on sales, profit, discount, quantity.
2. Analyzed skewness, outliers and distribution of key numerical variables.

Load Data into MySQL 
1. Set Up Connections: Connect to MySQL using sqlalchemy and load the cleaned data into each database.
2. Table Creation: Set up tables in both MySQL using Python SQLAlchemy to automate table creation and data insertion.
3. Verification: Run initial SQL queries to confirm that the data has been loaded accurately.

SQL Analysis: Complex Queries and Business Problem Solving
Business Problem-Solving: Write and execute complex SQL queries to answer critical business questions, such as
1. Best-selling products and categories.
2. Most profitable regions.
3. Impact of discounts on profits.
4. Sales trends across months and segments.
5. Customer ordering behavior.
Documentation: Keep clear notes of each query's objective, approach, and results.

Insights via Power BI Dashboard
1. Visualized state-wise sales performance on a geographic map.
2. Showcased year-wise trends of sales vs profit growth.
3. Identified top-performing products by revenue.
4. Highlighted category-wise and sub-category-wise sales share
5. Revealed monthly sales peaks and ordering behavior patterns.

Project Publishing
Publish the completed project on GitHub or any other version control platform, including:
1. The README.md file (this document).
2. Jupyter Notebooks (if applicable).
3. SQL query scripts.
4. Data files (if possible) or steps to access them.

Requirements
1. Python 3.8+
2. SQL Databases: MySQL
3. Python Libraries:
pandas, numpy, sqlalchemy, mysql-connector-python, psycopg2
4. Kaggle API Key (for data downloading)
