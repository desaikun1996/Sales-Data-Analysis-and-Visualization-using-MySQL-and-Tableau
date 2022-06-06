
/*
 Basic Data Analysis on the dataset.
*/

# Year-wise total sales.
select d.year Year,
format(sum(Normalised_Sales_Amount),2) Total_Sales
from sales.transactions t
inner join sales.date d on d.date=t.order_date
group by d.year
order by 1 desc;

# Total Sales by Region
select m.markets_name Region,
format(sum(Normalised_Sales_Amount),2) Total_Sales
from sales.transactions t
inner join sales.markets m on t.market_code=m.markets_code
group by m.markets_name
order by sum(Normalised_Sales_Amount) desc;

# Total Sales by Zone
select m.zone Zone,
format(sum(Normalised_Sales_Amount),2) Total_Sales
from sales.transactions t
inner join sales.markets m on t.market_code=m.markets_code
group by m.zone
order by sum(Normalised_Sales_Amount) desc;


# Year-wise total quantity sold.
select d.year Year,
format(sum(sales_qty),0) Total_Quantity_Sold
from sales.transactions t
inner join sales.date d on d.date=t.order_date
group by d.year
order by 1 desc;

# Total Qunatity Sold by Region
select m.markets_name Region,
format(sum(sales_qty),0) Total_Quantity_Sold
from sales.transactions t
inner join sales.markets m on t.market_code=m.markets_code
group by m.markets_name
order by sum(sales_qty) desc;

# Total Qunatity Sold by Zone
select m.zone Zone,
format(sum(sales_qty),0) Total_Quantity_Sold
from sales.transactions t
inner join sales.markets m on t.market_code=m.markets_code
group by m.zone
order by sum(sales_qty) desc;


