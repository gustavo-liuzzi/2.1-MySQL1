USE universidad;
SELECT asignatura.nombre, profesor.id_profesor
FROM asignatura
LEFT JOIN profesor ON profesor.id_profesor = asignatura.id_profesor
WHERE profesor.id_profesor IS NULL;