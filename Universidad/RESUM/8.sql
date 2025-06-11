USE universidad;
SELECT curso_escolar.anyo_inicio as curso, COUNT(alumno_se_matricula_asignatura.id_alumno) as alumnos_matriculados
FROM curso_escolar
LEFT JOIN alumno_se_matricula_asignatura ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id
GROUP BY curso_escolar.anyo_inicio;