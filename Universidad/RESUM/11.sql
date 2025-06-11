USE universidad;
SELECT profesor.id_profesor as profesor_con_dpt_sin_asignatura
FROM departamento
INNER JOIN profesor ON profesor.id_departamento = departamento.id
LEFT JOIN asignatura ON asignatura.id_profesor = profesor.id_profesor
WHERE asignatura.id IS NULL;