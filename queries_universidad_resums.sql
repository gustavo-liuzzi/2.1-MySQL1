USE universidad;
SELECT count(persona.tipo)
FROM persona
WHERE persona.tipo = 'alumno';
SELECT COUNT(persona.fecha_nacimiento), YEAR(persona.fecha_nacimiento)
FROM persona
WHERE YEAR(persona.fecha_nacimiento) = 1999
AND persona.tipo = 'alumno';
SELECT departamento.nombre AS Departamento, COUNT(profesor.id_profesor) AS Cantidad
FROM departamento
INNER JOIN profesor ON profesor.id_departamento = departamento.id
GROUP BY departamento.nombre
ORDER BY Cantidad;
SELECT departamento.nombre as Departamento, COUNT(profesor.id_departamento) as Docentes
FROM departamento
LEFT JOIN profesor ON departamento.id = profesor.id_departamento
GROUP BY departamento.nombre
ORDER BY Docentes;
SELECT grado.nombre Grado, COUNT(asignatura.id) as Asignaturas
FROM grado
LEFT JOIN asignatura ON grado.id = asignatura.id_grado
GROUP BY grado.nombre
ORDER BY Asignaturas;
SELECT grado.nombre Grado, COUNT(asignatura.id) as Asignaturas
FROM grado
LEFT JOIN asignatura ON grado.id = asignatura.id_grado
GROUP BY grado.nombre
HAVING COUNT(asignatura.id) > 40
ORDER BY Asignaturas;
SELECT grado.nombre AS grado, asignatura.tipo as tipo_asignatura, SUM(asignatura.creditos) AS total_creditos
FROM grado
INNER JOIN asignatura ON grado.id = asignatura.id_grado
GROUP BY grado.nombre, asignatura.tipo
ORDER BY grado.nombre, asignatura.tipo;
SELECT curso_escolar.anyo_inicio as curso, COUNT(alumno_se_matricula_asignatura.id_alumno) as alumnos_matriculados
FROM curso_escolar
LEFT JOIN alumno_se_matricula_asignatura ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id
GROUP BY curso_escolar.anyo_inicio;
SELECT profesor.id_profesor, persona.nombre, persona.apellido1, persona.apellido2, COUNT(asignatura.id)
FROM profesor
INNER JOIN persona ON persona.id = profesor.id_profesor
LEFT JOIN asignatura ON asignatura.id_profesor = profesor.id_profesor
GROUP BY profesor.id_profesor
ORDER BY asignatura.id;
SELECT *
FROM persona
WHERE persona.tipo = 'alumno'
ORDER BY persona.fecha_nacimiento DESC
LIMIT 1;
SELECT profesor.id_profesor as profesor_con_dpt_sin_asignatura
FROM departamento
INNER JOIN profesor ON profesor.id_departamento = departamento.id
LEFT JOIN asignatura ON asignatura.id_profesor = profesor.id_profesor
WHERE asignatura.id IS NULL;