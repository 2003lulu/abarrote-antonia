-- Tabla cliente
CREATE TABLE cliente (
    Num_Cliente INT PRIMARY KEY,
    CURP VARCHAR(18),
    Nombre VARCHAR(50),
    Apellido_Pa VARCHAR(50),
    Apellido_Ma VARCHAR(50),
    Telefono VARCHAR(15)
);

-- Tabla producto
CREATE TABLE producto (
    Num_Producto INT PRIMARY KEY,
    Nombre VARCHAR(25),
    Precio DECIMAL(10, 2),
    Tamano VARCHAR(50),
    Codigo VARCHAR(50)
);

-- Tabla vendedor
CREATE TABLE vendedor (
    Num_Vendedor INT PRIMARY KEY,
    RFC VARCHAR(13),
    Nombre VARCHAR(50),
    Apellido_Pa VARCHAR(50),
    Apellido_Ma VARCHAR(50),
    Telefono VARCHAR(15)
);

-- Tabla proveedor
CREATE TABLE proveedor (
    Num_Proveedor INT PRIMARY KEY,
    CURP VARCHAR(18),
    Nombre VARCHAR(50),
    Apellido_Pat VARCHAR(50),
    Apellido_Mat VARCHAR(50),
    Telefono VARCHAR(15)
);

-- Tabla cliente_producto
CREATE TABLE cliente_producto (
    Num_Cliente INT,
    Num_Producto INT,
    PRIMARY KEY (Num_Cliente, Num_Producto),
    FOREIGN KEY (Num_Cliente) REFERENCES cliente(Num_Cliente),
    FOREIGN KEY (Num_Producto) REFERENCES producto(Num_Producto)
);

-- Tabla producto_vendedor
CREATE TABLE producto_vendedor (
    Num_Producto INT,
    Num_Vendedor INT,
    PRIMARY KEY (Num_Producto, Num_Vendedor),
    FOREIGN KEY (Num_Producto) REFERENCES producto(Num_Producto),
    FOREIGN KEY (Num_Vendedor) REFERENCES vendedor(Num_Vendedor)
);

-- Tabla producto_proveedor
CREATE TABLE producto_proveedor (
    Num_Producto INT,
    Num_Proveedor INT,
    PRIMARY KEY (Num_Producto, Num_Proveedor),
    FOREIGN KEY (Num_Producto) REFERENCES producto(Num_Producto),
    FOREIGN KEY (Num_Proveedor) REFERENCES proveedor(Num_Proveedor)
);

-- Insertar datos en la tabla cliente
INSERT INTO cliente VALUES
(1, 'LOSED25613421', 'Edwin', 'Lopez', 'Santiago', '9531441259'),
(2, 'GOGA520502310', 'Yanet', 'Gonzales', 'Garcia', '9532771904'),
(3, 'LOOD852632123', 'Daisy', 'Ortiz', 'Lopez', '9531265460'),
(4, 'LOBS852145632', 'Saul', 'Lopez', 'Bautista', '9531613220'),
(5, 'PAOA857458523', 'Alvaro', 'Pacheco', 'Osorio', '9531435246'),
(6, 'GAOC985286525', 'Carlos', 'Gatica', 'Osorio', '9532771904'),
(7, 'MARA846842523', 'Antonia', 'Martinez', 'Sandoval', '5545261338'),
(8, 'MACM684128742', 'Maviel', 'Martinez', 'Cholula', '9532274343'),
(9, 'JOCJ415741523', 'Julissa', 'Jose', 'Cruz', '9532383753'),
(10, 'MEVR841284125', 'Rufino', 'Mendoza', 'Vasques', '9531406172');

-- Insertar datos en la tabla producto
INSERT INTO producto VALUES
(8, 'Coca Cola', 18, 'Chico', '328413'),
(10, 'Papel', 25, 'Mediano', '795212'),
(5, 'Mayonesa', 22, 'Chico', '876205'),
(12, 'Pasta dental', 23, 'Mediano', '959132'),
(9, 'Takis', 15, 'Chico', '978264'),
(15, 'Power', 21, 'Chico', '66252'),
(3, 'Monster', 39, 'Mediano', '795212'),
(6, 'Arroz', 24, 'Mediano', '3645627'),
(19, 'Trapos', 10, 'Chico', '875245'),
(4, 'Rufles', 13, 'Chico', '725678');

-- Insertar datos en la tabla vendedor
INSERT INTO vendedor VALUES
(1, '9826416317519', 'Juan', 'Garcia', 'Sanchez', '8655854554'),
(2, '8784512849621', 'Luis', 'Lopez', 'Rodriguez', '525568585'),
(3, '2379154682156', 'Lucio', 'Aparicio', 'Perez', '967822318'),
(4, '6789499242452', 'Minerva', 'Alvarez', 'Ruiz', '785167168'),
(5, '7258058621042', 'Leidy', 'Perez', 'Mendoza', '7816854568'),
(6, '8564873454256', 'Juan', 'Lopez', 'Lopez', '780236491'),
(7, '8272112572105', 'Antonio', 'Rendon', 'Rodriguez', '4861753208'),
(8, '5108107815555', 'Paola', 'Lopez', 'Perez', '8301756341'),
(9, '8437256487543', 'Gladis', 'Perez', 'Ruiz', '7963218734'),
(10, '3424546124358', 'Nadia', 'Alvarez', 'Mendoza', '9754531457');

-- Insertar datos en la tabla proveedor
INSERT INTO proveedor VALUES
(1, 'CRSED25613421', 'Joel', 'Contreras', 'Rojas', '9531478934'),
(2, 'OMGA520502310', 'Marcos', 'Ortega', 'Medina', '9532771908'),
(3, 'CLOD852632123', 'David', 'Cabrera', 'Lopez', '9531265478'),
(4, 'CBBS852145632', 'Alexander', 'Carrazgo', 'Bautista', '9531613221'),
(5, 'SGCOA85745523', 'Gezer', 'Sanchez', 'Guzman', '9531435243'),
(6, 'LGSED25613498', 'Miguel Angel', 'Legaria', 'Rodriguez', '9531478930'),
(7, 'FSGA520502317', 'Lucas', 'Fernandez', 'Santos', '9532771998'),
(8, 'UFOD852632190', 'Benjamin', 'Santos', 'Lopez', '9531265456'),
(9, 'RBBS852145634', 'Vicente', 'Ramirez', 'Bautista', '9531613232'),
(10, 'RGCOA85745578', 'Joaquin', 'Reyes', 'Reyes', '9531435256');

-- Insertar datos en la tabla cliente_producto
INSERT INTO cliente_producto VALUES
(1, 8),
(2, 10),
(3, 5),
(4, 12),
(5, 9),
(6, 15),
(7, 3),
(8, 6),
(9, 19),
(10, 4);

-- Insertar datos en la tabla producto_vendedor
INSERT INTO producto_vendedor VALUES
(8, 1),
(10, 2),
(5, 3),
(12, 4),
(9, 5),
(15, 6),
(3, 7),
(6, 8),
(19, 9),
(4, 10);

-- Insertar datos en la tabla producto_proveedor
INSERT INTO producto_proveedor VALUES
(8, 1),
(10, 2),
(5, 3),
(12, 4),
(9, 5),
(15, 6),
(3, 7),
(6, 8),
(19, 9),
(4, 10);

-- 1. SELECT * FROM cliente;
SELECT * FROM cliente;

-- 2. SELECT * FROM producto;
SELECT * FROM producto;

-- 3. SELECT * FROM cliente_producto;
SELECT * FROM cliente_producto;

-- 4. SELECT * FROM producto_proveedor;
SELECT * FROM producto_proveedor;

-- 5. JOIN entre cliente y cliente_producto;
SELECT c.Nombre AS nombre_cliente, cp.Num_producto
FROM cliente c
JOIN cliente_producto cp ON c.Num_Cliente = cp.Num_cliente;

-- 6. SELECT * FROM producto WHERE stock <= 50;
SELECT * FROM producto WHERE stock <= 50;

-- 7. Suma total de ventas por cliente;
SELECT c.Nombre AS nombre_cliente, SUM(p.Precio) AS total_ventas
FROM cliente c
JOIN cliente_producto cp ON c.Num_Cliente = cp.Num_cliente
JOIN producto p ON cp.Num_producto = p.Num_Producto
GROUP BY c.Nombre;

-- 8. Medicamentos suministrados por más de un proveedor;
SELECT p.*
FROM producto p
JOIN producto_proveedor pp ON p.Num_Producto = pp.Num_producto
GROUP BY p.Num_Producto
HAVING COUNT(pp.Num_proveedor) > 1;

-- 9. Productos con precio mayor a 8 y sus proveedores;
SELECT p.Nombre AS nombre_producto, p.Precio, prov.Nombre AS nombre_proveedor
FROM producto p
JOIN producto_proveedor pp ON p.Num_Producto = pp.Num_producto
JOIN proveedor prov ON pp.Num_proveedor = prov.Num_proveedor
WHERE p.Precio > 8;