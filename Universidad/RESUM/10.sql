USE universidad;
SELECT *
FROM persona
WHERE persona.tipo = 'alumno'
ORDER BY persona.fecha_nacimiento DESC
LIMIT 1;