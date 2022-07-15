use northwind;

-- EJERCICIO 1--
SELECT product_id, product_name, unit_price
FROM products
LIMIT 10;

-- EJERCICIO 2--

SELECT product_id, product_name, unit_price
FROM products
ORDER BY product_id DESC
LIMIT 10;

-- EJERCICIO 3 --

SELECT DISTINCT order_id
FROM order_details;

-- EJERCICIO 4 --

SELECT DISTINCT order_id
FROM order_details
LIMIT 2;

-- EJERCICIO 5 --

SELECT order_id, unit_price * quantity AS importe_total
FROM order_details
ORDER BY importe_total DESC
LIMIT 3;

-- EJERCICIO 6 --

SELECT order_id, unit_price * quantity AS importe_total
FROM order_details
ORDER BY importe_total
LIMIT 5
OFFSET 5;

-- EJERCICIO 7 --

SELECT category_name AS nombre_de_categoría
FROM categories;

-- EJERCICIO 8 --

SELECT order_id, DATE_ADD(shipped_date,INTERVAL -5 day) AS fecha_retrasada
FROM orders
ORDER BY order_id;

-- EJERCICIO 9 --

SELECT product_name, unit_price
FROM products
WHERE unit_price BETWEEN 15 AND 50;

-- EJERCICIO 10 --

SELECT product_name, unit_price
FROM products
WHERE unit_price IN (18, 19, 20)


