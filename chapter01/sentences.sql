--Select * from INFORMATION_SCHEMA.TABLES;

--https://packagecontrol.io/packages/SQLTools
--http://mtxr.github.io/SQLTools/

SELECT * from public.active_suplier_orders;
--drop view IF EXISTS public.active_suplier_orders;

CREATE OR REPLACE VIEW active_suplier_orders AS 
SELECT suppliers.supplier_id, suppliers.supplier_name, orders.quantity, orders.price,orders.order_number
FROM suppliers
INNER JOIN orders
ON suppliers.supplier_id=orders.supplier_id
WHERE suppliers.supplier_name='XYZ Company'
AND orders.is_active='TRUE';