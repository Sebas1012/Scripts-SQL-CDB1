USE zoologico
GO
-- a. Mostrar todos los registros de zoológicos almacenados.
SELECT * FROM zoologicos;
GO
-- b. Mostrar (Número de identificación, sexo y especie) de animales almacenados.
SELECT animales.numero_identificacion, animales.sexo, especies.nombre_vulgar, especies.nombre_cientifico FROM animales
INNER JOIN especies ON animales.codigo_especie = especies.codigo_especie;
GO
-- c. Mostrar los Animales que son de Brasil.
SELECT * FROM animales
INNER JOIN especies ON animales.codigo_especie = especies.codigo_especie
WHERE animales.pais_origen = 'Brasil';
GO
-- d.Eliminar los zoológicos cuyos nombres terminan en N. 
DELETE FROM zoologicos WHERE nombre LIKE '%n'
GO
-- e. Mostrar la información de León y Elefante.
SELECT * FROM especies WHERE nombre_vulgar = 'Léon' OR nombre_vulgar = 'Elefante';
GO
-- f. Mostrar las especies que sean diferentes a Delfín Rosado.
SELECT * FROM especies WHERE nombre_vulgar != 'Delfín Rosado';
GO
-- g. Mostrar los zoológicos cuyos nombres empiezan por N y L.
SELECT * FROM zoologicos WHERE nombre LIKE '[nl]%'
GO
-- h. Mostrar el año de nacimiento de todos los animales que pertenecen a un Zoo X dado.
SELECT zoologicos.nombre AS zoologico, animales.a_nacimiento, animales.sexo FROM animales
INNER JOIN zoologicos ON animales.codigo_zoo = zoologicos.codigo_zoo
WHERE zoologicos.nombre = 'Zoológico Nacional';
GO
-- i. Actualizar los animales que tienen nombre vulgar para que este campo sea igual a “Censurado” si el nombre termina en la letra O.
UPDATE especies
SET nombre_vulgar = 'Censurado'
WHERE nombre_vulgar LIKE '%o';
GO