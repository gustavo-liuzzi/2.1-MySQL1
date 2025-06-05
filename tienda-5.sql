USE tienda;
SELECT nombre AS "nombre del producto", precio as euros, ROUND(precio * 1.14, 2) AS "dólares norteamericános" FROM producto;