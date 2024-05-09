
--SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;

--select SUM(total_price)/COUNT(DISTINCT order_id) as Avg_Order_Value from pizza_sales;

--select SUM(quantity) as Total_Pizza_Sold from pizza_sales;

--select COUNT(DISTINCT order_id) as Total_Orders from pizza_sales;

--select cast(cast(sum(quantity)as decimal(10,2))/cast(COUNT(DISTINCT order_id)as decimal(10,2))as decimal(10,2))as Avg_Pizza_Per_Order from pizza_sales;

--Daily Trend for Total Orders
/*select DATENAME(DW,order_date)as Order_day,COUNT(DISTINCT order_id) as Total_Orders 
from pizza_sales group by DATENAME(DW,order_date);*/

--Hourly Trend for Orders
/*select DATEPART(HOUR,order_time)as Order_Hours,COUNT(DISTINCT order_id) as Total_Orders from pizza_sales 
group by DATEPART(HOUR,order_time) order by DATEPART(HOUR,order_time) asc ;*/

--% of Sales by Pizza Size

/*select pizza_category,SUM(total_price) as total_revenue,
sum(total_price)*100/ (select SUM(total_price)  from pizza_sales) as PCT from pizza_sales
group by pizza_category
order by pizza_category;*/

--% of Sales by Pizza Size

/*select pizza_size,SUM(total_price) as total_revenue,
sum(total_price)*100/ (select SUM(total_price) from pizza_sales where MONTH(order_date)=1) as PCT 
from pizza_sales
where MONTH(order_date)=1
group by pizza_size 
order by pizza_size;*/

--Total Pizzas Sold by Pizza Category
/*select pizza_category,SUM(quantity) as Total_Quantity_Sold  
from pizza_sales 
group by pizza_category 
order by Total_Quantity_Sold desc;*/

--Top 5 Best Sellers by Total Pizzas Sold
/*select top 5 pizza_name,SUM(quantity) as Total_Pizzas_Sold  from pizza_sales group by pizza_name
order by SUM(quantity) desc;*/

--Bottom 5 Best Sellers by Total Pizzas Sold
/*select top 5 pizza_name,SUM(quantity) as Total_Pizzas_Sold  
from pizza_sales 
group by pizza_name
order by SUM(quantity);*/