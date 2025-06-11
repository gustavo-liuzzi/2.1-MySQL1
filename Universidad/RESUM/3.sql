USE universidad;
SELECT departamento.nombre AS Departamento, COUNT(profesor.id_profesor) AS Cantidad
FROM departamento
INNER JOIN profesor ON profesor.id_departamento = departamento.id
GROUP BY departamento.nombre
ORDER BY Cantidad;