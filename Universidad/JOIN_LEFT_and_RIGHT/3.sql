USE universidad;
SELECT departamento.nombre AS departamento, departamento.id
FROM departamento
LEFT JOIN profesor ON profesor.id_departamento = departamento.id
WHERE profesor.id_profesor IS null;