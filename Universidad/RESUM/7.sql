USE universidad;
SELECT grado.nombre AS grado, asignatura.tipo as tipo_asignatura, SUM(asignatura.creditos) AS total_creditos
FROM grado
INNER JOIN asignatura ON grado.id = asignatura.id_grado
GROUP BY grado.nombre, asignatura.tipo
ORDER BY grado.nombre, asignatura.tipo;