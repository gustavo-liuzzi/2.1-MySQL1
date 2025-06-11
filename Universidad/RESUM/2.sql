USE universidad;
SELECT COUNT(persona.fecha_nacimiento), YEAR(persona.fecha_nacimiento)
FROM persona
WHERE YEAR(persona.fecha_nacimiento) = 1999
AND persona.tipo = 'alumno'