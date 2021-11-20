CREATE DATABASE zoologico;
GO
USE zoologico;
GO
CREATE TABLE zoologicos(
	codigo_zoo int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	nombre varchar(50) NOT NULL,
	ciudad varchar(30) NOT NULL,
	pais varchar(30) NOT NULL,
	tamano_m2 float NOT NULL,
	presupuesto_anual money NOT NULL,
);
GO
CREATE TABLE especies(
	codigo_especie int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	nombre_vulgar varchar(50) NOT NULL,
	nombre_cientifico varchar(50) NOT NULL,
	familia_pertenece varchar(50) NOT NULL,
	peligro_extincion varchar(2) NOT NULL
);
GO
CREATE TABLE animales(
	numero_identificacion int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	codigo_zoo int NOT NULL,
	codigo_especie int NOT NULL,
	sexo varchar(10) NOT NULL,
	a_nacimiento varchar(4) NOT NULL,
	pais_origen varchar(30) NOT NULL,
	continente_origen varchar(30) NOT NULL,
	FOREIGN KEY (codigo_zoo) REFERENCES zoologicos(codigo_zoo) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (codigo_especie) REFERENCES especies(codigo_especie) ON DELETE CASCADE ON UPDATE CASCADE,
);