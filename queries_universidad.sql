-- 1
USE universidad;
SELECT nombre, apellido1, apellido2 from persona
WHERE tipo = 'alumno'
ORDER BY apellido1, apellido2, nombre;
-- 2
SELECT nombre, apellido1, apellido2 from persona
WHERE tipo = 'alumno' AND telefono IS null;
-- 3
SELECT * FROM persona
WHERE tipo = 'alumno' AND YEAR(fecha_nacimiento) = 1999;
-- 4
SELECT * FROM persona
WHERE tipo = 'profesor'
AND telefono is NULL
AND nif like '%K';
-- 5
SELECT nombre from asignatura
WHERE id_grado ='7'
AND cuatrimestre ='1';
-- 6
SELECT persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre
FROM persona
INNER JOIN profesor ON profesor.id_profesor = persona.id
INNER JOIN departamento ON departamento.id = profesor.id_departamento
ORDER BY persona.apellido1, persona.apellido2, persona.nombre;
-- 7
SELECT asignatura.nombre, curso_escolar.anyo_inicio, curso_escolar.anyo_fin
FROM asignatura
INNER JOIN alumno_se_matricula_asignatura ON asignatura.id = alumno_se_matricula_asignatura.id_asignatura
INNER JOIN persona ON alumno_se_matricula_asignatura.id_alumno = persona.id
INNER JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id
WHERE persona.nif = '26902806M';
-- 8
SELECT DISTINCT departamento.nombre AS departamento
FROM departamento
INNER JOIN profesor ON departamento.id = profesor.id_departamento
INNER JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor
INNER JOIN grado ON asignatura.id_grado = grado.id
WHERE grado.nombre = 'Grado en Ingeniería Informática (Plan 2015)';
-- 9
SELECT DISTINCT persona.nombre, persona.apellido1, persona.apellido2, curso_escolar.anyo_inicio, curso_escolar.anyo_fin
FROM alumno_se_matricula_asignatura
INNER JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id
INNER JOIN persona ON alumno_se_matricula_asignatura.id_alumno = persona.id
WHERE curso_escolar.anyo_inicio = '2018'
AND curso_escolar.anyo_fin = '2019'
AND curso_escolar.id IS NOT null;
