SELECT * FROM aaft.csv_table;
use aaft;
select count(distinct(product_id)) from csv_table;

### 1) Find the total quantity sold for each product###
select product_id,sum(quantity) as "total_quantity"
from csv_table
group by product_id;

### 2) Find average price of each product###
select product_id,avg(price) as "average price"
from csv_table
group by product_id;

### 3) get total number of sales(sale_id,count) for each region####
select region,count(sales_id) as "total sales"
from csv_table
group by region;

### 4) Find total quantity sold for each region####
select region,sum(quantity) as " total quantity"
from csv_table
group by region;

### 5) find the region where more than 10 items have been sold
select region,sum(quantity) as "total quantity"
from csv_table
group by region
having sum(quantity)>10;
 