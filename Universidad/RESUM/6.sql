USE universidad;
SELECT grado.nombre Grado, COUNT(asignatura.id) as Asignaturas
FROM grado
LEFT JOIN asignatura ON grado.id = asignatura.id_grado
GROUP BY grado.nombre
HAVING COUNT(asignatura.id) > 40
ORDER BY Asignaturas;