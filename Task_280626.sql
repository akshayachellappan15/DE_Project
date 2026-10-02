create database ecommerce;
use ecommerce;
create table orderstable1(
order_id INT primary key,
cust_id INT not null,
product_name varchar(25),
product_dept varchar(25),
price decimal(10,2),
delivery_date date,
payment_method varchar(20),
delivery_status varchar(25),
check (delivery_status= "success" or delivery_status="failure"));

INSERT INTO orderstable1 
(order_id, cust_id, product_name, product_dept, price, delivery_date, payment_method, delivery_status)
VALUES
(1, 101, 'Laptop', 'Electronics', 65000.00, '2026-06-01', 'Credit Card', 'success'),
(2, 102, 'Headphones', 'Electronics', 2500.00, '2026-06-02', 'UPI', 'failure'),
(3, 103, 'Shoes', 'Fashion', 3200.00, '2026-06-03', 'Cash', 'success'),
(4, 104, 'T-Shirt', 'Fashion', 800.00, '2026-06-04', 'Debit Card', 'success'),
(5, 105, 'Refrigerator', 'Appliances', 45000.00, '2026-06-05', 'Credit Card', 'failure'),
(6, 106, 'Microwave', 'Appliances', 12000.00, '2026-06-06', 'Net Banking', 'success'),
(7, 107, 'Mobile Phone', 'Electronics', 30000.00, '2026-06-07', 'UPI', 'success'),
(8, 108, 'Smartwatch', 'Electronics', 7000.00, '2026-06-08', 'Cash', 'failure'),
(9, 109, 'Jeans', 'Fashion', 1500.00, '2026-06-09', 'Debit Card', 'success'),
(10, 110, 'Mixer Grinder', 'Appliances', 5000.00, '2026-06-10', 'Credit Card', 'success'),
(11, 111, 'Tablet', 'Electronics', 18000.00, '2026-06-11', 'UPI', 'failure'),
(12, 112, 'Dress', 'Fashion', 2200.00, '2026-06-12', 'Cash', 'success'),
(13, 113, 'Air Conditioner', 'Appliances', 38000.00, '2026-06-13', 'Net Banking', 'success'),
(14, 114, 'Shoes', 'Fashion', 2800.00, '2026-06-14', 'Debit Card', 'failure'),
(15, 115, 'Television', 'Electronics', 55000.00, '2026-06-15', 'Credit Card', 'success'),
(16, 116, 'Earbuds', 'Electronics', 2000.00, '2026-06-16', 'UPI', 'success'),
(17, 117, 'Kurta', 'Fashion', 1200.00, '2026-06-17', 'Cash', 'failure'),
(18, 118, 'Washing Machine', 'Appliances', 25000.00, '2026-06-18', 'Debit Card', 'success'),
(19, 119, 'Camera', 'Electronics', 40000.00, '2026-06-19', 'Net Banking', 'success'),
(20, 120, 'Sandals', 'Fashion', 900.00, '2026-06-20', 'Credit Card', 'failure'),
(21, 121, 'Oven', 'Appliances', 15000.00, '2026-06-21', 'UPI', 'success'),
(22, 122, 'Laptop Bag', 'Fashion', 1800.00, '2026-06-22', 'Cash', 'success'),
(23, 123, 'Bluetooth Speaker', 'Electronics', 3500.00, '2026-06-23', 'Debit Card', 'failure'),
(24, 124, 'Shirt', 'Fashion', 1100.00, '2026-06-24', 'Credit Card', 'success'),
(25, 125, 'Vacuum Cleaner', 'Appliances', 8000.00, '2026-06-25', 'Net Banking', 'success'),
(26, 126, 'Monitor', 'Electronics', 12000.00, '2026-06-26', 'UPI', 'failure'),
(27, 127, 'Jacket', 'Fashion', 3500.00, '2026-06-27', 'Cash', 'success'),
(28, 128, 'Dishwasher', 'Appliances', 42000.00, '2026-06-28', 'Debit Card', 'success'),
(29, 129, 'Keyboard', 'Electronics', 1500.00, '2026-06-29', 'Credit Card', 'failure'),
(30, 130, 'Saree', 'Fashion', 2500.00, '2026-06-30', 'UPI', 'success');

select count(product_dept), product_dept from orderstable1 group by product_dept;
select sum(price), product_dept from orderstable1 group by product_dept;
select max(sum(price)) from orderstable1 where sum(price) < (select max(sum(price)) from orderstable1);
select sum(price) as price_1, product_dept from orderstable1 group by product_dept; -- to set alias name for sum(price)

select count(delivery_status) from orderstable1 where delivery_status ="success";
select count(delivery_status) from orderstable1 where delivery_status ="failure";
select product_name, product_dept, sum(price_1) from orderstable1 group by product_name;
select sum(price), product_dept from orderstable1 group by product_dept,delivery_status having delivery_status="success";

-- add 2 new columns
alter table orderstable1 add column (discount_price decimal(10,2), 
final_price decimal(10,2));
select * from orderstable1;
-- And update values to the new columns
update orderstable1 set discount_price=(price*0.03) where discount_price is null;
update orderstable1 set final_price=(price-discount_price) where final_price is null;

-- to turn off safe mode
set sql_safe_updates=0;

-- to turn on safe mde
set sql_safe_updates=1;


