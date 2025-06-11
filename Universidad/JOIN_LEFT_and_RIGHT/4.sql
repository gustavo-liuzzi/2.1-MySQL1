USE universidad;
SELECT profesor.id_profesor as NroDeProfesor, persona.nombre, persona.apellido1, persona.apellido2, asignatura.nombre as Asignatura
FROM profesor
INNER JOIN persona ON profesor.id_profesor = persona.id
LEFT JOIN asignatura on profesor.id_profesor = asignatura.id_profesor
WHERE asignatura.nombre IS NULL;