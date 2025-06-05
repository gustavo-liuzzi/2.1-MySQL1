USE tienda;
SELECT nombre, precio, ROUND(precio * 1.14, 2) AS USD FROM producto;