--CREATE DATABASE packpub_dev_essential owner postgres;


CREATE TABLE suppliers
(
supplier_id integer primary key,
supplier_name varchar(30),
phone_integer integer
);

CREATE TABLE orders
(
order_number integer primary key,
supplier_id integer references suppliers(supplier_id),
quantity integer,
is_active varchar(10),
price integer
);

CREATE VIEW active_suplier_orders AS 
SELECT suppliers.supplier_id, suppliers.supplier_name, orders.quantity,orders.price FROM suppliers INNER JOIN orders ON suppliers.supplier_id=orders.supplier_id
WHERE suppliers.supplier_name='XYZ COMPANY' AND orders.is_active='TRUE';
