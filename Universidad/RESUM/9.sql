USE universidad;
SELECT profesor.id_profesor, persona.nombre, persona.apellido1, persona.apellido2, COUNT(asignatura.id)
FROM profesor
INNER JOIN persona ON persona.id = profesor.id_profesor
LEFT JOIN asignatura ON asignatura.id_profesor = profesor.id_profesor
GROUP BY profesor.id_profesor
ORDER BY asignatura.id;