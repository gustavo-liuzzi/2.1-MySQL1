USE universidad;
SELECT departamento.nombre AS departamento, persona.apellido1, persona.apellido2, persona.nombre
FROM persona
INNER JOIN profesor ON persona.id = profesor.id_profesor
LEFT JOIN departamento ON profesor.id_departamento = departamento.id
ORDER BY departamento.nombre, persona.apellido1, persona.apellido2, persona.nombre;