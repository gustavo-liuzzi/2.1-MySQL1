USE universidad;
SELECT DISTINCT departamento.nombre AS departamento
FROM departamento
INNER JOIN profesor ON departamento.id = profesor.id_departamento
INNER JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor
INNER JOIN grado ON asignatura.id_grado = grado.id
WHERE grado.nombre = 'Grado en Ingeniería Informática (Plan 2015)';