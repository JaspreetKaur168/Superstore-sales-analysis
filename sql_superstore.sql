SELECT * FROM project.superstore;

#1. What are the total sales, total profit and average discount company-wide?

select
Round(sum(Sales), 2) as total_sales,
Round(sum(profit), 2) as total_profit,
Round(avg(Discount), 2) as avg_discount
from superstore;

#2. Identify the highest-rated state in each region by sale?

select *
from
(
select
region,
state,
round(sum(sales), 2) as total_sales,
rank() over (partition by region order by sum(sales) desc) as rnk
from superstore
group by region, state
order by total_sales desc
)as rnked
where rnk = 1;

#3. which category and sub-category combinations are most and least profitable?

select
Category,
Sub_category,
round(sum(sales), 2) as total_sales,
round(sum(profit), 2) as total_profit,
round((sum(profit)/ Nullif(sum(sales), 0)) * 100, 2) as profit_margin_percentage
from superstore
group by Category, Sub_Category
order by profit_margin_percentage desc;

#4. Who are the top 10 customers by total profit?

select 
customer_name,
round(sum(profit), 2) as total_profit
from superstore
group by Customer_Name
order by total_profit desc
limit 10;

#5. which ship-mode is most used, and how does it relate to profit?

select
ship_mode,
count(*) as order_count,
round(sum(profit), 2) as total_profit
from superstore
group by Ship_Mode
order by order_count desc;

#6 What are the monthly trends in sales and profit?

select
monthname(str_to_date(Order_date, "%d-%m-%y")) as formatted_month,
round(sum(sales), 2) as monthly_sales,
round(sum(profit), 2) as monthly_profit
from superstore
group by formatted_month,category
order by monthly_sales desc;

#7. Which products have the highest and lowest profit?

#  top 5 profitable products
select
Product_name,
round(Sum(sales), 2) as total_sales,
round(sum(profit), 2) as total_profit
from superstore
group by Product_Name
order by total_profit desc
limit 5;

# Bottom 5 loss-making products
select
Product_name,
round(Sum(sales), 2) as total_sales,
round(sum(profit), 2) as total_profit
from superstore
group by Product_Name
order by total_profit asc
limit 5;

#8. What is the effect of discount levels on average profit and order count in each product category?

select
category,
round(discount, 1) as discount_level,
count(*) as order_count,
round(avg(profit), 2) as avg_profit
from superstore
group by category,discount_level
order by discount_level desc;

#9. Which product are sold in the highest quantities?

select
product_name,
sum(quantity) as total_quantity_sold
from superstore
group by Product_Name
order by total_quantity_sold desc
limit 10;

#10. Are there states with high sales but negative overall profit?

select
state,
round(sum(sales), 2) as total_sales,
round(sum(profit), 2) as total_profit
from superstore
group by state
having total_profit < 0
order by total_sales desc;





