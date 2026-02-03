CREATE database pizza_sales;
use  pizza_sales;
select * from pizza_types;
use pizza_sales;
select * from orders4;
CREATE TABLE order_details (
  order_details_id INT NOT NULL,
  order_id INT NOT NULL,
  pizza_id TEXT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (order_details_id )
);
select * from order_details;
drop table orders_details;
use pizza_sales;
create table orders4(order_id int not null,
order_date date not null,
order_time time not null);