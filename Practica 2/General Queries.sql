USE concesionario
GO
-- 1. Se requiere consultar los registros de ventas de los autos que son tipo Camioneta.
SELECT * FROM venta
INNER JOIN carro ON venta.placa_carro = carro.placa 
WHERE carro.codigo_tipo = 1;
GO
-- 2. Se requiere consultar si se ha vendido un automóvil de tipo vehículo y marca Kia
SELECT * FROM venta
INNER JOIN carro ON venta.placa_carro = carro.placa 
WHERE carro.marca = 'Kia';
GO
-- 3. Se requiere consultar las ventas de Fabio
SELECT * FROM venta
INNER JOIN vendedor ON venta.codigo_vendedor = vendedor.codigo_vendedor
WHERE vendedor.nombre_vendedor LIKE '%Fabio%'
GO
-- 4. Se requiere mostrar los clientes de tipo industria repostería que han comprado en el concesionario
SELECT * FROM venta
INNER JOIN cliente ON venta.cedula_cliente = cliente.cedula_cliente 
WHERE cliente.tipo_industria = 'Reposteria';
GO
-- 5. ¿Consultar los colores de autos disponibles en el concesionario ? 
SELECT marca, color FROM carro
INNER JOIN tipo ON carro.codigo_tipo = tipo.codigo_tipo
WHERE tipo.cantidad > 1;
GO
-- 6. Eliminar el registro de carro que cueste menos de 30.000.000
DELETE FROM carro WHERE valor < 30000000;
GO
-- 7. ¿Consultar el tipo de vehículo más costoso en el concesionario (USAR FUNCION MAX() EN SELECT) ?
SELECT carro.marca, tipo.nombre_tipo, carro.valor FROM carro
INNER JOIN tipo ON carro.codigo_tipo = tipo.codigo_tipo
WHERE carro.valor = (
	SELECT MAX(valor) AS valor FROM carro
);
GO
-- 8. ¿Consultar el tipo de vehículo con mayor cantidad de stock? 
SELECT * FROM tipo WHERE cantidad = (
	SELECT MAX(cantidad) AS cantidad FROM tipo
);
GO
-- 9. Consultar el tipo de vehículo que se encuentra parqueado en el número de parqueo #2?
SELECT * FROM carro WHERE numero_parqueo = 2 ;
GO
-- 10. Mostrar los nombres de los clientes que compraron autos con placas que terminan en 1 
SELECT nombre_cliente FROM cliente
INNER JOIN venta ON cliente.cedula_cliente = venta.cedula_cliente
WHERE venta.placa_carro LIKE '%1'
GO
-- 11. Consultar el vendedor encargado de vender el auto al cliente con cedula 60 y que tipo de auto adquirio el cliente ? 
SELECT * FROM venta
INNER JOIN carro ON venta.placa_carro = carro.placa 
WHERE venta.cedula_cliente = 3654584;
GO