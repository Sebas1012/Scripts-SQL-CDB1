CREATE DATABASE universidad;
GO
USE universidad;
GO
CREATE TABLE alumno(
	codigo_alumno int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	nombre varchar(30) NOT NULL,
	apellidos varchar(30) NOT NULL,
	grupo int NOT NULL
);
GO
CREATE TABLE parciales(
	codigo_parcial int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	titulo_parcial varchar(30) NOT NULL,
	numero_preguntas int NOT NULL,
	fecha_r date NOT NULL
);
GO
CREATE TABLE talleres(
	codigo_taller int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	titulo_taller varchar(30) NOT NULL,
	grado_dificultad varchar NOT NULL
);
GO
CREATE TABLE profesores(
	cedula_profesor int NOT NULL PRIMARY KEY,
	nombres varchar(30) NOT NULL,
	apellidos varchar(30) NOT NULL
);
GO

/*Rompimientos*/

CREATE TABLE alumnos_parciales(
	id int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	codigo_alumno int NOT NULL,
	codigo_parcial int NOT NULL,
	/*Deberia ser un float*/
	nota_parcial int,

    /*Relaciones*/
	FOREIGN KEY(codigo_alumno) REFERENCES alumno(codigo_alumno),
	FOREIGN KEY(codigo_parcial) REFERENCES parciales(codigo_parcial)
);
GO
CREATE TABLE alumnos_talleres(
	id int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	codigo_alumno int NOT NULL,
	codigo_taller int NOT NULL,
	/*Deberia ser un float*/
	nota_taller int NOT NULL,
	fecha_r date NOT NULL,

    /*Relaciones*/
	FOREIGN KEY(codigo_alumno) REFERENCES alumno(codigo_alumno),
	FOREIGN KEY(codigo_taller) REFERENCES talleres(codigo_taller)
);
GO
CREATE TABLE profesores_talleres(
	id int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	cedula_profesor int NOT NULL,
	codigo_taller int NOT NULL,
	fecha_ultimo_taller date NOT NULL,

    /*Relaciones*/
	FOREIGN KEY(cedula_profesor) REFERENCES profesores(cedula_profesor),
	FOREIGN KEY(codigo_taller) REFERENCES talleres(codigo_taller)
);
GO