USE zoologico
GO
/*---------------------------------------------------------------------------*/
INSERT INTO zoologicos(nombre, ciudad, pais, tamano_m2, presupuesto_anual)
VALUES
('Loo Parque Grande', 'Madrid', 'España', 800, 7000000),
('Zoológico de Chapultepec', 'Ciudad de México', 'México', 600, 9500100),
('North Worth Zoo', 'Fort Worth', 'Estados Unidos', 1000, 7455000),
('Toronto Zoo', 'Toronto', 'Canadá', 654, 15400000),
('Zoológico Conservación', 'Ciudad de San Salvador', 'Salvador', 924, 10426000);
GO
/*---------------------------------------------------------------------------*/
INSERT INTO especies(nombre_vulgar, nombre_cientifico, familia_pertenece, peligro_extincion)
VALUES
('Oso Perezoso', 'Choloepus hoffmanni', 'Pilosa', 'No'),
('Léon', 'Panthera leo', 'Felidae', 'Si'),
('Mono Capuchino', 'Cebus', 'Cebidae', 'No'),
('Delfín Rosado', 'Inia geoffrensis', '	Iniidae', 'Si'),
('Elefante', 'Elephantidae', 'Proboscidea', 'Si');
GO
/*---------------------------------------------------------------------------*/
INSERT INTO animales(codigo_zoo, codigo_especie, sexo, a_nacimiento, pais_origen, continente_origen)
VALUES
(2, 4, 'H', '2015', 'Brasil', 'América del Sur'),
(3, 1, 'H', '2013', 'India', 'Asia'),
(5, 3, 'M', '2018', 'Panamá', 'América del Sur'),
(4, 2, 'M', '2011', 'Uganda', 'África'),
(1, 5, 'M', '2016', 'Tanzania', 'África');
GO