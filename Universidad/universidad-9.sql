USE universidad;
SELECT DISTINCT persona.nombre, persona.apellido1, persona.apellido2, curso_escolar.anyo_inicio, curso_escolar.anyo_fin
FROM alumno_se_matricula_asignatura
INNER JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id
INNER JOIN persona ON alumno_se_matricula_asignatura.id_alumno = persona.id
WHERE curso_escolar.anyo_inicio = '2018'
AND curso_escolar.anyo_fin = '2019'
AND curso_escolar.id IS NOT null;