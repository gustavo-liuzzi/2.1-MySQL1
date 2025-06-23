USE universidad;
SELECT departamento.nombre AS departamento, persona.apellido1, persona.apellido2, persona.nombre
FROM persona
INNER JOIN profesor ON persona.id = profesor.id_profesor
LEFT JOIN departamento ON profesor.id_departamento = departamento.id
ORDER BY departamento.nombre, persona.apellido1, persona.apellido2, persona.nombre;
USE universidad;
SELECT departamento.nombre AS departamento, persona.apellido1, persona.apellido2, persona.nombre
FROM persona
INNER JOIN profesor ON persona.id = profesor.id_profesor
LEFT JOIN departamento ON profesor.id_departamento = departamento.id
WHERE departamento.nombre is NULL
ORDER BY departamento.nombre, persona.apellido1, persona.apellido2, persona.nombre;
USE universidad;
SELECT departamento.nombre AS departamento, departamento.id
FROM departamento
LEFT JOIN profesor ON profesor.id_departamento = departamento.id
WHERE profesor.id_profesor IS null;
USE universidad;
SELECT profesor.id_profesor as NroDeProfesor, persona.nombre, persona.apellido1, persona.apellido2, asignatura.nombre as Asignatura
FROM profesor
INNER JOIN persona ON profesor.id_profesor = persona.id
LEFT JOIN asignatura on profesor.id_profesor = asignatura.id_profesor
WHERE asignatura.nombre IS NULL;
USE universidad;
SELECT asignatura.nombre, profesor.id_profesor
FROM asignatura
LEFT JOIN profesor ON profesor.id_profesor = asignatura.id_profesor
WHERE profesor.id_profesor IS NULL;
USE universidad;
SELECT DISTINCT departamento.id, departamento.nombre
FROM departamento
LEFT JOIN profesor ON departamento.id = profesor.id_departamento
LEFT JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor
LEFT JOIN alumno_se_matricula_asignatura ON asignatura.id = alumno_se_matricula_asignatura.id_asignatura
LEFT JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id
WHERE curso_escolar.id IS NULL;