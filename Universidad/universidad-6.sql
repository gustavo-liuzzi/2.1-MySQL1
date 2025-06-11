USE universidad;
SELECT persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre
FROM persona
INNER JOIN profesor ON profesor.id_profesor = persona.id
INNER JOIN departamento ON departamento.id = profesor.id_departamento
ORDER BY persona.apellido1, persona.apellido2, persona.nombre;