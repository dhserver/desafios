-- Se debe crear el modelo en la base de datos, en una base de datos llamada prueba , e insertar los
-- siguientes registros:

CREATE DATABASE prueba;

\c prueba;

CREATE TABLE Cliente(
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    rut VARCHAR(15),
    dirección VARCHAR(25) 
);

CREATE TABLE Factura(
    num_fact INT PRIMARY KEY,
    fecha DATE,
    id_cliente INT REFERENCES Cliente(id_cliente)

);

INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('201','2020-07-31','1');

CREATE TABLE Categoria(
    id_categoria SERIAL PRIMARY KEY,
    nombre VARCHAR(15),
    descripcion TEXT
);

CREATE TABLE Producto(
    id_producto SERIAL PRIMARY KEY,
    id_categoria INT REFERENCES Categoria(id_categoria),
    nombre VARCHAR(15),
    descripcion TEXT,
    valor INT
);

CREATE TABLE FacturaProducto(
    num_fact INT REFERENCES Factura(num_fact),
    id_producto INT REFERENCES Producto(id_producto)
);

-- 5 clientes
INSERT INTO Cliente (nombre, rut, dirección) VALUES ('Francisco Hernández','16127908-0','Monte Palomar #0455');
INSERT INTO Cliente (nombre, rut, dirección) VALUES ('Flavia Tapia','16509590-1','Lago Yelcho #25');
INSERT INTO Cliente (nombre, rut, dirección) VALUES ('Elena Henández','23558225-3','Yelcho lago #55');
INSERT INTO Cliente (nombre, rut, dirección) VALUES ('Javier Hernández','18565722-2','Monte #04');
INSERT INTO Cliente (nombre, rut, dirección) VALUES ('Flor Carrasco','2548522-0','Santa victoria #04');
-- 8 productos
INSERT INTO Producto(id_categoria, nombre, descripcion, valor) VALUES ('1','Mouse','Mouse PC','10800');
INSERT INTO Producto(id_categoria, nombre, descripcion, valor) VALUES ('1','Teclado','Teclado PC','9900');
INSERT INTO Producto(id_categoria, nombre, descripcion, valor) VALUES ('1','Pantall 15" LCD ','Pantalla PC','74500');
INSERT INTO Producto(id_categoria, nombre, descripcion, valor) VALUES ('2','Breake 16 A 1P','Automatico monofasico','6990');
INSERT INTO Producto(id_categoria, nombre, descripcion, valor) VALUES ('2','Breake 6 A 1P','Automatico monofasico','4990');
INSERT INTO Producto(id_categoria, nombre, descripcion, valor) VALUES ('2','Breake 2 A 1P','Automatico monofasico','2990');
INSERT INTO Producto(id_categoria, nombre, descripcion, valor) VALUES ('3','RTU230','Router 4G','80990');
INSERT INTO Producto(id_categoria, nombre, descripcion, valor) VALUES ('3','Mikrotik 540','Router','52000');

-- 3 categorias
INSERT INTO Categoria (nombre, descripcion) VALUES ('pc','accesorios');
INSERT INTO Categoria (nombre, descripcion) VALUES ('eléctrico','articulos eléctricos');
INSERT INTO Categoria (nombre, descripcion) VALUES ('red','router, swich, AP, etc');

-- 10 facturas
-- 2 para el cliente 1, con 2 y 3 productos
    -- Fact
INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('201','2020-07-31','1');
INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('280','2020-08-22','1');
    -- Product fact 201 
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('201','1');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('201','3');
    -- Product fact 280
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('280','2');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('280','8');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('280','6');
-- 3 para el cliente 2, con 3, 2 y 3 productos
    --Fact
INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('202','2020-07-31','2');
INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('203','2020-08-01','2');
INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('204','2020-08-03','2');
    --Product fact 202
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('202','6');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('202','4');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('202','3');
    --Product fact 203
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('203','8');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('203','7');
    --Product fact 204
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('204','4');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('204','5');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('204','6');

-- 1 para el cliente 3, con 1 producto
INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('205','2020-08-03','3');
    --Product fact 205
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('205','4');

-- 4 para el cliente 4, con 2, 3, 4 y 1 producto 
INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('207','2020-08-05','4');
INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('208','2020-08-09','4');
INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('211','2020-08-12','4');
INSERT INTO Factura (num_fact, Fecha, id_cliente) VALUES ('218','2020-08-13','4');
    --Product fact 207
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('207','3');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('207','2');
    --Product fact 208
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('208','3');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('208','1');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('208','5');
    --Product fact 211
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('211','3');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('211','5');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('211','6');
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('211','4');
    --Product fact 218
INSERT INTO FacturaProducto (num_fact, id_producto) VALUES ('218','3');


-- ¿Que cliente realizó la compra más cara?

SELECT * FROM Cliente INNER JOIN Factura ON Cliente.id_cliente = Factura.id_cliente INNER JOIN FacturaProducto ON Factura.num_fact=FacturaProducto.num_fact INNER JOIN Producto ON FacturaProducto.id_producto = Producto.id_producto ORDER BY Producto.valor DESC ;


 id_cliente |       nombre        |    rut     |      dirección      | num_fact |   fecha    | id_cliente | num_fact | id_producto | id_producto | id_categoria |     nombre      |      descripcion      | valor 
------------+---------------------+------------+---------------------+----------+------------+------------+----------+-------------+-------------+--------------+-----------------+-----------------------+-------
          2 | Flavia Tapia        | 16509590-1 | Lago Yelcho #25     |      203 | 2020-08-01 |          2 |      203 |           7 |           7 |            3 | RTU230          | Router 4G             | 80990
          4 | Javier Hernández    | 18565722-2 | Monte #04           |      208 | 2020-08-09 |          4 |      208 |           3 |           3 |            1 | Pantall 15" LCD | Pantalla PC           | 74500
          4 | Javier Hernández    | 18565722-2 | Monte #04           |      207 | 2020-08-05 |          4 |      207 |           3 |           3 |            1 | Pantall 15" LCD | Pantalla PC           | 74500
          4 | Javier Hernández    | 18565722-2 | Monte #04           |      218 | 2020-08-13 |          4 |      218 |           3 |           3 |            1 | Pantall 15" LCD | Pantalla PC           | 74500
          1 | Francisco Hernández | 16127908-0 | Monte Palomar #0455 |      201 | 2020-07-31 |          1 |      201 |           3 |           3 |            1 | Pantall 15" LCD | Pantalla PC           | 74500
          2 | Flavia Tapia        | 16509590-1 | Lago Yelcho #25     |      202 | 2020-07-31 |          2 |      202 |           3 |           3 |            1 | Pantall 15" LCD | Pantalla PC           | 74500
          4 | Javier Hernández    | 18565722-2 | Monte #04           |      211 | 2020-08-12 |          4 |      211 |           3 |           3 |            1 | Pantall 15" LCD | Pantalla PC           | 74500
          2 | Flavia Tapia        | 16509590-1 | Lago Yelcho #25     |      203 | 2020-08-01 |          2 |      203 |           8 |           8 |            3 | Mikrotik 540    | Router                | 52000
          1 | Francisco Hernández | 16127908-0 | Monte Palomar #0455 |      280 | 2020-08-22 |          1 |      280 |           8 |           8 |            3 | Mikrotik 540    | Router                | 52000
          4 | Javier Hernández    | 18565722-2 | Monte #04           |      208 | 2020-08-09 |          4 |      208 |           1 |           1 |            1 | Mouse           | Mouse PC              | 10800
          1 | Francisco Hernández | 16127908-0 | Monte Palomar #0455 |      201 | 2020-07-31 |          1 |      201 |           1 |           1 |            1 | Mouse           | Mouse PC              | 10800
          4 | Javier Hernández    | 18565722-2 | Monte #04           |      207 | 2020-08-05 |          4 |      207 |           2 |           2 |            1 | Teclado         | Teclado PC            |  9900
          1 | Francisco Hernández | 16127908-0 | Monte Palomar #0455 |      280 | 2020-08-22 |          1 |      280 |           2 |           2 |            1 | Teclado         | Teclado PC            |  9900
          3 | Elena Henández      | 23558225-3 | Yelcho lago #55     |      205 | 2020-08-03 |          3 |      205 |           4 |           4 |            2 | Breake 16 A 1P  | Automatico monofasico |  6990
          2 | Flavia Tapia        | 16509590-1 | Lago Yelcho #25     |      202 | 2020-07-31 |          2 |      202 |           4 |           4 |            2 | Breake 16 A 1P  | Automatico monofasico |  6990
          2 | Flavia Tapia        | 16509590-1 | Lago Yelcho #25     |      204 | 2020-08-03 |          2 |      204 |           4 |           4 |            2 | Breake 16 A 1P  | Automatico monofasico |  6990
          4 | Javier Hernández    | 18565722-2 | Monte #04           |      211 | 2020-08-12 |          4 |      211 |           4 |           4 |            2 | Breake 16 A 1P  | Automatico monofasico |  6990
          4 | Javier Hernández    | 18565722-2 | Monte #04           |      208 | 2020-08-09 |          4 |      208 |           5 |           5 |            2 | Breake 6 A 1P   | Automatico monofasico |  4990
          2 | Flavia Tapia        | 16509590-1 | Lago Yelcho #25     |      204 | 2020-08-03 |          2 |      204 |           5 |           5 |            2 | Breake 6 A 1P   | Automatico monofasico |  4990
          4 | Javier Hernández    | 18565722-2 | Monte #04           |      211 | 2020-08-12 |          4 |      211 |           5 |           5 |            2 | Breake 6 A 1P   | Automatico monofasico |  4990
          4 | Javier Hernández    | 18565722-2 | Monte #04           |      211 | 2020-08-12 |          4 |      211 |           6 |           6 |            2 | Breake 2 A 1P   | Automatico monofasico |  2990
          1 | Francisco Hernández | 16127908-0 | Monte Palomar #0455 |      280 | 2020-08-22 |          1 |      280 |           6 |           6 |            2 | Breake 2 A 1P   | Automatico monofasico |  2990
          2 | Flavia Tapia        | 16509590-1 | Lago Yelcho #25     |      202 | 2020-07-31 |          2 |      202 |           6 |           6 |            2 | Breake 2 A 1P   | Automatico monofasico |  2990
          2 | Flavia Tapia        | 16509590-1 | Lago Yelcho #25     |      204 | 2020-08-03 |          2 |      204 |           6 |           6 |            2 | Breake 2 A 1P   | Automatico monofasico |  2990
(24 rows)

-- ¿Que cliente pagó sobre 100 de monto?

SELECT Cliente.nombre, Factura.num_fact, Producto.valor FROM Cliente INNER JOIN Factura ON Cliente.id_cliente = Factura.id_cliente INNER JOIN FacturaProducto ON Factura.num_fact=FacturaProducto.num_fact INNER JOIN Producto ON FacturaProducto.id_producto = Producto.id_producto WHERE Producto.valor > 100 ;

      nombre        | num_fact | valor 
---------------------+----------+-------
 Francisco Hernández |      201 | 10800
 Francisco Hernández |      201 | 74500
 Francisco Hernández |      280 |  9900
 Francisco Hernández |      280 | 52000
 Francisco Hernández |      280 |  2990
 Flavia Tapia        |      202 |  2990
 Flavia Tapia        |      202 |  6990
 Flavia Tapia        |      202 | 74500
 Flavia Tapia        |      203 | 52000
 Flavia Tapia        |      203 | 80990
 Flavia Tapia        |      204 |  6990
 Flavia Tapia        |      204 |  4990
 Flavia Tapia        |      204 |  2990
 Javier Hernández    |      207 | 74500
 Javier Hernández    |      207 |  9900
 Javier Hernández    |      208 | 74500
 Javier Hernández    |      208 | 10800
 Javier Hernández    |      208 |  4990
 Javier Hernández    |      211 | 74500
 Javier Hernández    |      211 |  4990
 Javier Hernández    |      211 |  2990
 Javier Hernández    |      211 |  6990
 Javier Hernández    |      218 | 74500
 Elena Henández      |      205 |  6990



-- ¿Cuantos clientes han comprado el producto 6.

SELECT Producto.id_producto, Cliente.nombre, Factura.num_fact, Producto.valor FROM Cliente INNER JOIN Factura ON Cliente.id_cliente = Factura.id_cliente INNER JOIN FacturaProducto ON Factura.num_fact=FacturaProducto.num_fact INNER JOIN Producto ON FacturaProducto.id_producto = Producto.id_producto WHERE Producto.id_producto = 6 ;

 id_producto |       nombre        | num_fact | valor 
-------------+---------------------+----------+-------
           6 | Francisco Hernández |      280 |  2990
           6 | Flavia Tapia        |      202 |  2990
           6 | Flavia Tapia        |      204 |  2990
           6 | Javier Hernández    |      211 |  2990
(4 rows)
