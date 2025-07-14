SELECT * from producto;
-- Ejercicio 1
USE tienda;
SELECT nombre FROM producto;
-- Ejercicio 2
SELECT nombre, precio FROM producto;
-- Ejercicio 3
SELECT * FROM producto;
      -- Ejercio 3, versión SHOW_COLUMNS
SHOW COLUMNS IN producto;
-- Ejercicio 4
SELECT nombre, precio, ROUND(precio * 1.14, 2) AS USD FROM producto;
-- Ejercicio 5
SELECT nombre AS "nombre del producto", precio as euros, ROUND(precio * 1.14, 2) AS "dólares norteamericános" FROM producto;
-- Ejercicio 6
SELECT UPPER(nombre) as nombre, precio from producto;
-- Ejercicio 7
SELECT LOWER(nombre) as nombre, precio from producto;
-- Ejercicio 8
SELECT nombre, upper(left(nombre, 2)) as ID_fabricante from fabricante;
-- Ejercicio 9
SELECT nombre, ROUND(precio) from producto;
-- Ejercicio 10
SELECT nombre, TRUNCATE(precio, 0) from producto;
-- Ejercicio 11
SELECT codigo_fabricante
FROM producto;
-- Ejercicio 12
SELECT DISTINCT codigo_fabricante
FROM producto;
-- Ejercicio 13
SELECT nombre FROM fabricante
ORDER BY nombre;
-- Ejercicio 14
SELECT nombre FROM fabricante
ORDER BY nombre DESC;
-- Ejercicio 15
SELECT nombre FROM producto
ORDER BY nombre, precio DESC;
-- Ejercicio 16
SELECT * FROM fabricante
LIMIT 5;
-- Ejercicio 17
SELECT * FROM fabricante
LIMIT 2 OFFSET 3;
-- Ejercicio 18
SELECT nombre, precio FROM producto
ORDER BY precio ASC
LIMIT 1;
-- Ejercicio 19
SELECT nombre, precio FROM producto
ORDER BY precio DESC
LIMIT 1;
-- Ejercicio 20
SELECT nombre FROM producto
WHERE codigo_fabricante = 2;
-- EJERCICIO 21
SELECT producto.nombre, producto.precio, fabricante.nombre AS fabricante
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;
-- EJERCICIO 22
SELECT producto.nombre, producto.precio, fabricante.nombre AS fabricante
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
ORDER BY fabricante;
-- EJERCICIO 23
SELECT producto.codigo, producto.nombre, producto.codigo_fabricante, fabricante.nombre AS fabricante
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;
-- EJERCICIO 24
SELECT producto.nombre, producto.precio, fabricante.nombre AS fabricante
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
ORDER BY producto.precio
LIMIT 1;
-- EJERCICIO 25
SELECT producto.nombre, producto.precio, fabricante.nombre AS fabricante
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
ORDER BY producto.precio DESC
LIMIT 1;
-- EJERCICIO 26
SELECT producto.*
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
WHERE fabricante.nombre = 'lenovo';
-- EJERCICIO 27
SELECT producto.*
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
WHERE fabricante.nombre = 'crucial' AND producto.precio >200;
-- EJERCICIO 28
SELECT producto.*, fabricante.nombre AS fabricante
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
WHERE fabricante.nombre = 'asus' OR fabricante.nombre = 'seagate' OR fabricante.nombre = 'hewlett-packard';
-- EJERCICIO 29
SELECT producto.*, fabricante.nombre AS fabricante
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
WHERE fabricante.nombre IN ('asus', 'seagate', 'hewlett-packard');
-- EJERCICIO 30
SELECT producto.nombre, producto.precio
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
WHERE fabricante.nombre LIKE '%e';
-- EJERCICIO 31
SELECT producto.nombre, producto.precio
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
WHERE fabricante.nombre LIKE '%w%';
-- EJERCICIO 32
SELECT producto.nombre, producto.precio, fabricante.nombre as fabricante
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
WHERE producto.precio >= 180
ORDER BY producto.precio DESC, producto.nombre;
-- EJERCICIO 33
SELECT DISTINCT fabricante.*
FROM fabricante
JOIN producto ON fabricante.codigo = producto.codigo_fabricante;
-- EJERCICIO 34
SELECT DISTINCT fabricante.*
FROM fabricante
LEFT JOIN producto ON fabricante.codigo = producto.codigo_fabricante;
-- EJERCICIO 35
SELECT DISTINCT fabricante.*
FROM fabricante
LEFT JOIN producto ON fabricante.codigo = producto.codigo_fabricante
WHERE producto.codigo_fabricante IS NULL;
-- EJERCICIO 36
SELECT *
FROM producto
WHERE producto.codigo_fabricante IN (SELECT fabricante.codigo FROM fabricante WHERE fabricante.nombre = 'lenovo');
-- EJERCICIO 37
SELECT producto.*
FROM producto
WHERE producto.precio = (
	SELECT MAX(producto.precio)
    FROM producto
    WHERE producto.codigo_fabricante = (
		SELECT fabricante.codigo
        FROM fabricante
        WHERE fabricante.nombre = 'lenovo'
	)
);
-- EJERCICIO 38
SELECT producto.nombre
FROM producto
    WHERE producto.codigo_fabricante = (
		SELECT fabricante.codigo
        FROM fabricante
        WHERE fabricante.nombre = 'lenovo'
)
ORDER BY producto.precio DESC
LIMIT 1;
-- EJERCICIO 39
SELECT producto.nombre
FROM producto
    WHERE producto.codigo_fabricante = (
		SELECT fabricante.codigo
        FROM fabricante
        WHERE fabricante.nombre = 'hewlett-packard'
)
ORDER BY producto.precio
LIMIT 1;
-- EJERCICIO 40
SELECT producto.*
FROM producto
WHERE producto.precio >= (
	SELECT MAX(producto.precio)
    FROM producto
    WHERE producto.codigo_fabricante = (
		SELECT fabricante.codigo
        FROM fabricante
        WHERE fabricante.nombre = 'lenovo'
	)
);
-- EJERCICIO 41