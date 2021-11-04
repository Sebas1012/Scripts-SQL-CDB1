USE concesionario
GO
INSERT INTO vendedor(nombre_vendedor, direccion_vendedor, salario_vendedor) 
VALUES
('Oscar Suarez','CL 35D #31-85', 900.235),
('Fabio Lopez','CL 40B #11-55', 560.235),
('Susana Guzman','CL 65N #45-13', 900.235),
('Juliana Henao','CL 24A #35-45', 380.235),
('Sebastian Gomez','CL 22P #48-145', 684.235);

--************************************************
INSERT INTO cliente(cedula_cliente, nombre_cliente, direccion_cliente, ciudad_cliente, tipo_industria)
VALUES
(2568741, 'Jhon Gutierrez', 'AV 35 #15-15', 'Medellin', 'Agropecuaria'),
(3654584, 'Leandro Vargas', 'AV 312 #6-2', 'Manizales', 'Agropecuaria'),
(3211458, 'Valentina Vargas', 'AV 24 #5-8', 'Manizales', 'Tecnologia'),
(9644841, 'Estefania Guzman', 'AV 77 #31-58', 'Bogota', 'Ventas'),
(3187489, 'Paluca Loaiza', 'AV 83 #35-54', 'Cali', 'Ventas');
--************************************************

INSERT INTO tipo(nombre_tipo, cantidad)
VALUES
('Camioneta', 30),
('Convertible', 5),
('4x4', 14),
('Deportivo', 48),
('Sedan', 65);
--************************************************
INSERT INTO carro(marca, color, valor, codigo_tipo, numero_parqueo)
VALUES
('Kia', 'Azul', 35000000, 3, 325),
('Toyota', 'Rojo', 72030000, 4, 325),
('Chevrolet', 'Negro', 51100300, 1, 325),
('Porche', 'Negro', 95100000, 1, 325),
('Kia', 'Verde', 15300000, 5, 325);
--************************************************
INSERT INTO venta(codigo_vendedor, cedula_cliente, placa_carro, fecha_venta)
VALUES
(5, 2568741, 2, '2020-02-16'),
(3, 3187489, 4, '2018-05-07'),
(2, 3211458, 5, '2019-12-15'),
(2, 3654584, 3, '2021-08-01'),
(1, 9644841, 1, '2021-03-20');