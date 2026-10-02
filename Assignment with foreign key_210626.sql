create database customerorder;
use customerorder;

create table Customer1 (
Cust_id INT Primary key Auto_Increment, 
cust_name varchar(25) Not null, 
email_id varchar(25) unique not null, 
phonenumber bigint(15),
location varchar(30));

create table Customer2 (
Cust_id INT Primary key Auto_Increment, 
cust_name varchar(25) Not null, 
email_id varchar(25) , 
phonenumber bigint(15),
location varchar(30));

insert into Customer2 values (100, "AKSHAYA", "aksh123@gmail.com", "1234556778", "Chennai"),
(200, "Priyanka", "pri123@gmail.com", "8374837849", "Bangalore");

insert into Customer2 (cust_name, email_id) values ("Roopa", "rpu123@gmail.com");
insert into Customer2 (cust_name, phonenumber) values ("Sudha", "473454447843");
insert into Customer2 (cust_name, location) values ("Pooja", "Delhi");
select * from Customer1;
select * from Customer2;
update Customer2 set location="Pune" where location is null;

create table ordertable1 (
Order_id INT primary key Auto_increment,
Order_date date not null,
Cust_id INT ,
Amount decimal(10,2),
check (Amount>0), 
Foreign Key(Cust_id) references Customer1(Cust_id)
);
insert into ordertable1 (order_id, order_date,Cust_id,amount) values (100, "2026-02-15",100, 2000);
insert into ordertable1 (order_date, Cust_id, amount) values ("2026-03-20", 200, 1000);
select * from ordertable1;

-- Coasesce case functions
select * from Customer2;

-- It will first check for first value phone number if exists it will display that, if not display teh second value. If both does not exists then it will display the third value

select cust_name,
coalesce(phonenumber,email_id,"No Contact") as contact
from customer2;

-- null if function
select * from ordertable1;
alter table ordertable1 add column Total_price decimal(10,2);
alter table ordertable1 add column Product_Qty INT;
UPDATE ordertable1
SET Product_Qty = '2'
WHERE cust_id = 100;

UPDATE ordertable1
SET Product_Qty = '3'
WHERE cust_id = 200;

update ordertable1 set Total_price =(Product_Qty*Amount) where Total_price is null;
alter table ordertable1 add column dc_percentage decimal(10,2);
alter table ordertable1 modify column dc_percentage int;
update ordertable1 set dc_percentage =(
case 
when Total_price >=50000 then 7
when Total_price >=30000 then 5
when Total_price >=10000 then 3
else 0
end ) where dc_percentage is null;

insert into ordertable1 (Order_date,Amount, Product_Qty) values ("2026-04-15","27000","2");
insert into ordertable1 (Order_date,Amount, Product_Qty) values ("2026-06-15","16000","2");
insert into ordertable1 (Order_date,Amount, Product_Qty) values ("2026-07-15","7000","2");

alter table ordertable1 add column dc_price decimal(10,2);
update ordertable1 set dc_price =(Total_price * (dc_percentage/100)) where dc_price is null;

create table Customer3 (
Cust_id INT Primary key Auto_Increment, 
cust_name varchar(25), 
email_id varchar(25) , 
phonenumber bigint(15),
location varchar(30));

insert into Customer3 values (100, "AKSHAYA", "aksh123@gmail.com", "1234556778", "Chennai"),
(200, "Priyanka", "pri123@gmail.com", "8374837849", "Bangalore");
insert into Customer3 values (200, "Swamy", "aksh123@gmail.com", "1234556778", "Chennai"),
(150, "Priyanka", "pri123@gmail.com", "8374837849", "Bangalore");
insert into Customer3 values (300, "Vishagan", "aksh123@gmail.com", "1234556778", "Chennai"),
(350, "Priyanka", "pri123@gmail.com", "8374837849", "Bangalore");
insert into Customer3 values (400, "Mahilan", "aksh123@gmail.com", "1234556778", "Chennai"),
(450, "Priyanka", "pri123@gmail.com", "8374837849", "Bangalore");
insert into Customer3 values (600, "aksh123@gmail.com", "1234556778", "Chennai"),
(760, "pri123@gmail.com", "8374837849", "Bangalore");
insert into Customer3 (cust_id,email_id,phonenumber,location) values (700,"123@gmail.com","23645643854","Mumbai");

select * from Customer3;
-- null if case display null if there is no value for that column
select nullif(cust_name,"") as name from Customer3;

-- Joins
-- Inner Join
select * from ordertable1 as o inner join customer1 as c on o.Cust_id = c.Cust_id;
select * from ordertable1;
select * from customer1;

-- Left Outer Join
select * from customer1 as c left outer join ordertable1 as o on c.Cust_id = o.Cust_id;

-- Right Outer Join
select * from ordertable1 as o right outer join customer1 as c on c.Cust_id = o.Cust_id;
