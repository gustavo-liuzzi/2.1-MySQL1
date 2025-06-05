USE tienda;
SELECT nombre, upper(left(nombre, 2)) as ID_fabricante from fabricante;