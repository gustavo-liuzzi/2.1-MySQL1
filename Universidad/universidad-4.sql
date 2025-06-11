USE universidad;
SELECT * FROM persona
WHERE tipo = 'profesor'
AND telefono is NULL
AND nif like '%K';