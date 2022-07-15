USE northwind;

# Ejercicio 1 #

SELECT MAX(unit_price) AS highestprice, MIN(unit_price) AS lowestprice
FROM products;

# Ejercicio 2 #

SELECT COUNT(product_id), AVG(unit_price)
FROM products;

# Ejercicio 3 #

SELECT MAX(freight) 
FROM orders
WHERE ship_country = "UK";

# Ejercicio 4 #

SELECT AVG(unit_price) AS "preciomedio"
FROM products;

SELECT product_name, unit_price
FROM products
WHERE unit_price > 28.86
ORDER BY (unit_price) DESC;


# Ejercicio 5 #

SELECT COUNT(discontinued)
FROM products
WHERE discontinued = 1; 

# Ejercicio 6 #

SELECT product_id, product_name
FROM products 
WHERE discontinued = 0
ORDER BY (product_id) DESC
LIMIT 10;

