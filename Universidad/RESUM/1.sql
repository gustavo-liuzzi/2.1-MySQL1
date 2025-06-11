USE universidad;
SELECT count(persona.tipo)
FROM persona
WHERE persona.tipo = 'alumno';