

/*
In Markets table we see two records with Market outside India.
Seems that these are outliers and also we do not have linked records for them in Transactions table.
Hence, we can delete these two records from Markets table.
*/
select * from sales.markets;
delete from sales.markets where markets_name in ('New York','Paris');


/*
Cleaning the Transactions table

*/
select * from sales.transactions order by sales_amount;
select count(*) from sales.transactions where sales_amount<1;
#There are 1611 records with sales_amount less than 0. We can go ahead with deleting these records as they may be outliers.
delete from sales.transactions where sales_amount<1;


