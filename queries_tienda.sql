USE tienda;
SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SELECT * FROM producto;
SELECT nombre, precio, ROUND(precio * 1.14, 2) AS USD FROM producto;
SELECT nombre AS "nombre del producto", precio as euros, ROUND(precio * 1.14, 2) AS "dólares norteamericános" FROM producto;
SELECT UPPER(nombre) as nombre, precio from producto;
SELECT LOWER(nombre) as nombre, precio from producto;
SELECT nombre, upper(left(nombre, 2)) as ID_fabricante from fabricante;
SELECT nombre, ROUND(precio) from producto;
SELECT nombre, TRUNCATE(precio, 0) from producto;
SELECT fabricante.codigo
FROM fabricante
INNER JOIN producto on fabricante.codigo = producto.codigo_fabricante;
SELECT DISTINCT fabricante.codigo
FROM fabricante
INNER JOIN producto on fabricante.codigo = producto.codigo_fabricante;
SELECT nombre FROM fabricante
ORDER BY nombre;
SELECT nombre FROM fabricante
ORDER BY nombre DESC;
SELECT nombre FROM producto
ORDER BY nombre, precio DESC;
SELECT * FROM fabricante
LIMIT 5;
SELECT * FROM fabricante
LIMIT 2 OFFSET 3;
SELECT nombre, precio FROM producto
ORDER BY precio ASC
LIMIT 1;
SELECT nombre, precio FROM producto
ORDER BY precio DESC
LIMIT 1;
SELECT nombre FROM producto
WHERE codigo_fabricante = 2;
