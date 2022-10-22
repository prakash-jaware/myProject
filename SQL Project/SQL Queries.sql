use inventory;

-- Q1. Query to find product_name like ‘dell%’ from product table?

select * from products where product_name like 'Dell%'


-- Q2. Query_to_find_inventory_recieved_from_product_table_by_limit_10?

select * from products
order by inventory_received desc
limit 10;


-- Q3. Query to find number_shipped from order table where number shipped should be greater than 50 with desc 10

select * from orders
where number_shipped >50
limit 10;


-- Q4. Query to find order_date between ‘2017-1-1’ to ‘2022-1-1’ from order table

select * from orders
where order_date between date '2017-01-01' and '2020-01-01' 
order by number_shipped desc;


-- Q5. Query to find product_id in ascending order from purchase table.

select * from purchases
order by product_id asc;


-- Q6. Show the product name that have purchase quantity above 75.

select product_name, number_received from purchases
where number_received >75;


-- Q7. Show the list of product name starts by ‘A’ along with who bought that product’s first name of starting by ‘A’.

select * from orders
where product like 'A%' and first like 'A%';


-- Q8. Show supplier name, total count of supply, and total purchase individually

select supplier_name, count(supplier_name) as totalcount, sum(number_received) as sumofpurchases
from purchases
group by supplier_name
order by supplier_name;


-- Q9. List of the lowest 3 product sold, total count of product and total shipped product

select product_name, count(product_name) as countofproduct, sum(inventory_shipped) as sumofshipped
from products
group by product_name
order by sumofshipped asc
limit 3;


-- Q10. Get inventory on hand of products which are less 0?

select * from products
where inventory_on_hand < 0
order by inventory_on_hand ASC;


-- Q11. Query for finding Product which mention gaming laptop 'G'?

select * from products
where product_name like '% G %';


-- Q12. Query for finding Count of all Products from purchases supplied from each Suppliers.

select product_name, supplier_name, sum(number_received) as snr
from purchases
group by supplier_name
order by snr desc;


-- Q13. Query for finding Count of all Products from purchases supplied from each Suppliers, 3rd hightest?

select product_name, supplier_name, sum(number_received) as snr
from purchases
group by supplier_name
order by snr desC
limit 2,10;


-- Q14. Query for Right Join Products and Orders Limiting first 5 records?

select * from Orders as o
right join products as p
on p.product_id = o.product_id
limit 5;


-- Q15. Query for Left Join Products and Purchase:

select * from purchases as pr
left join products as p
on p.product_id = pr.product_id;

