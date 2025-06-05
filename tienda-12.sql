USE tienda;
SELECT DISTINCT fabricante.codigo
FROM fabricante
INNER JOIN producto on fabricante.codigo = producto.codigo_fabricante;