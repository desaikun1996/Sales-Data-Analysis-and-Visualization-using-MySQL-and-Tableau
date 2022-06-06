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
#Product Types :- 1. Own Brand, 2. Distribution


select * from sales.transactions;
select count(*) from sales.transactions;	#150281



