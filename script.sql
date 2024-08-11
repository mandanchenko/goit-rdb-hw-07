/*1*/
select orders.id, 
orders.date, 
YEAR(orders.date) as YEAR, 
MONTH(orders.date) as MONTH, 
DAY(orders.date) as DAY
from orders;
/*2*/
select orders.id, 
orders.date,
DATE_ADD(orders.date, INTERVAL 1 DAY) as new_date
from orders;
 
/*3*/
select orders.id, 
orders.date, 
UNIX_TIMESTAMP(orders.date)
from orders;
/*4*/
select count(orders.date)
from orders
where orders.date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00';

/*5*/
SELECT 
    id,
    date,
    JSON_OBJECT('id', id, 'date', date) AS order_json
FROM orders;
