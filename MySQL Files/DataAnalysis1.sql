select * from sales.customers;
select * from sales.date;
select * from sales.markets;
select * from sales.products;
select * from sales.transactions;


select distinct customer_type from sales.customers;
#Customer Types :- 1. Brick & Mortar, 2. E-Commerce

select distinct zone from sales.markets;
#Zone :- 1. South, 2. Central, 3. North, 4. Blank (New York, Paris)

select distinct product_type from sales.products;
#Product Types :- 1. Own Brand, 2. Distribution (Both values with enter character - might need to clean)


select * from sales.transactions;

select count(*) from sales.transactions;	#150281

select distinct currency from sales.transactions;
#Currency :- INR, USD, INR(with enter character - Might need to clean)

select max(sales_qty),min(sales_qty),max(sales_amount),min(sales_amount) from sales.transactions;



