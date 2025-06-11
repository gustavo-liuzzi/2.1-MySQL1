USE universidad;
SELECT departamento.nombre as Departamento, COUNT(profesor.id_departamento) as Docentes
FROM departamento
LEFT JOIN profesor ON departamento.id = profesor.id_departamento
GROUP BY departamento.nombre
ORDER BY Docentes;