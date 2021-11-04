CREATE DATABASE concesionario;
GO
USE concesionario;
GO
CREATE TABLE vendedor(
	codigo_vendedor int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	nombre_vendedor varchar(30) NOT NULL,
	direccion_vendedor varchar(30) NOT NULL,
	salario_vendedor real NOT NULL,
);
GO
CREATE TABLE cliente(
	cedula_cliente int NOT NULL PRIMARY KEY,
	nombre_cliente varchar(30) NOT NULL,
	direccion_cliente varchar(30) NOT NULL,
	ciudad_cliente varchar(30) NOT NULL,
	tipo_industria varchar(30) NOT NULL
);
GO
CREATE TABLE tipo(
	codigo_tipo INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	nombre_tipo varchar(30) NOT NULL,
	cantidad INT NOT NULL
);
GO

-- Tablas con relaciones
CREATE TABLE carro(
	placa int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	marca varchar(30) NOT NULL,
	color varchar(30) NOT NULL,
	valor money NOT NULL,
	codigo_tipo int NOT NULL,
	numero_parqueo INT NOT NULL,

	--Relaciones
	FOREIGN KEY(codigo_tipo) REFERENCES tipo(codigo_tipo) ON DELETE CASCADE ON UPDATE CASCADE
	
);
GO
CREATE TABLE venta(
	numero_venta int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	codigo_vendedor int NOT NULL,
	cedula_cliente int NOT NULL,
	placa_carro int NOT NULL,
	fecha_venta date NOT NULL,
		
	--Relaciones
	FOREIGN KEY(codigo_vendedor) REFERENCES vendedor(codigo_vendedor) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(cedula_cliente) REFERENCES cliente(cedula_cliente) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(placa_carro) REFERENCES carro(placa) ON DELETE CASCADE ON UPDATE CASCADE,
); 
GO