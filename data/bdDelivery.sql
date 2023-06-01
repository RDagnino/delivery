--
-- Archivo generado con SQLiteStudio v3.4.4 el dom. May. 28 12:26:50 2023
--
-- Codificación de texto usada: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabla: Carrito
CREATE TABLE IF NOT EXISTS Carrito (Id_carrito INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, fecha_hora DATETIME NOT NULL, total REAL NOT NULL, Id_carrito_producto INTEGER NOT NULL REFERENCES Carrito_Producto(Id_carrito_producto) ON UPDATE CASCADE ON DELETE CASCADE, Id_cliente INTEGER NOT NULL REFERENCES Cliente (Id_cliente) ON UPDATE CASCADE ON DELETE CASCADE);

-- Tabla: Carrito_Producto
CREATE TABLE IF NOT EXISTS Carrito_Producto (Id_carrito_producto INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, cantidad INTEGER NOT NULL, total_producto REAL NOT NULL, Id_producto INTEGER NOT NULL REFERENCES Producto (Id_producto) ON UPDATE CASCADE ON DELETE CASCADE);

-- Tabla: Cliente
CREATE TABLE IF NOT EXISTS Cliente (Id_cliente INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, nombre TEXT(30) NOT NULL, ape_pat TEXT(30) NOT NULL, ape_mat TEXT(30) NOT NULL, celular TEXT(30) NOT NULL, correo TEXT (30) NOT NULL, Id_usuario INTEGER NOT NULL REFERENCES Usuario (Id_usuario) ON UPDATE CASCADE ON DELETE CASCADE, Id_direccion INTEGER NULL REFERENCES Direccion (Id_direccion) ON UPDATE CASCADE ON DELETE CASCADE);
INSERT INTO Cliente (Id_cliente, nombre, ape_pat, ape_mat, celular, correo, Id_usuario, Id_direccion) VALUES (1, 'Renzo', 'Tasayco', 'Dagnino', '991771404', 'renzoa.tasayco@upsjb.edu.pe', 1, NULL);
INSERT INTO Cliente (Id_cliente, nombre, ape_pat, ape_mat, celular, correo, Id_usuario, Id_direccion) VALUES (2, 'Nikole', 'Huallpa', 'Fernandez', '966395194', 'nikole.huallpa@upsjb.edu.pe', 2, NULL);
INSERT INTO Cliente (Id_cliente, nombre, ape_pat, ape_mat, celular, correo, Id_usuario, Id_direccion) VALUES (3, 'Marcelo', 'Sanchez', 'Pachas', '912956695', 'marcelo.sanchez@upsjb.edu.pe', 3, NULL);
INSERT INTO Cliente (Id_cliente, nombre, ape_pat, ape_mat, celular, correo, Id_usuario, Id_direccion) VALUES (4, 'Jhon', 'Ojose', 'Ortega', '981494503', 'jhon.ojose@upsjb.edu.pe', 4, NULL);

-- Tabla: Direccion
CREATE TABLE IF NOT EXISTS Direccion (Id_direccion INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Descripcion TEXTO (50) NOT NULL, Id_cliente INTEGER NOT NULL REFERENCES Cliente (Id_cliente) ON UPDATE CASCADE ON DELETE CASCADE);
INSERT INTO Direccion (Id_direccion, Descripcion, Id_cliente) VALUES (1, 'Av. ABC 123', 1);
INSERT INTO Direccion (Id_direccion, Descripcion, Id_cliente) VALUES (2, 'Av. DEF 456', 2);
INSERT INTO Direccion (Id_direccion, Descripcion, Id_cliente) VALUES (3, 'Av. GHI 789', 3);
INSERT INTO Direccion (Id_direccion, Descripcion, Id_cliente) VALUES (4, 'Av. JKL 213', 4);

-- Tabla: Favoritos
CREATE TABLE IF NOT EXISTS Favoritos (Id_favoritos INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Id_producto INTEGER NOT NULL REFERENCES Producto (Id_producto) ON UPDATE CASCADE ON DELETE CASCADE, Id_cliente INTEGER NOT NULL REFERENCES Cliente(Id_cliente) ON UPDATE CASCADE ON DELETE CASCADE);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (1, 1, 1);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (2, 2, 1);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (3, 3, 1);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (4, 4, 1);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (5, 1, 2);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (6, 2, 2);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (7, 7, 2);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (8, 11, 3);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (9, 15, 3);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (10, 1, 4);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (11, 13, 4);
INSERT INTO Favoritos (Id_favoritos, Id_producto, Id_cliente) VALUES (12, 17, 4);

-- Tabla: Marca
CREATE TABLE IF NOT EXISTS Marca (Id_marca INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, nombre TEXT(30) NOT NULL);
INSERT INTO Marca (Id_marca, nombre) VALUES (1, 'San Fernando');
INSERT INTO Marca (Id_marca, nombre) VALUES (2, 'Privilege');
INSERT INTO Marca (Id_marca, nombre) VALUES (3, 'Laive');
INSERT INTO Marca (Id_marca, nombre) VALUES (4, 'Costa');
INSERT INTO Marca (Id_marca, nombre) VALUES (5, 'Lays');

-- Tabla: Pedidos
CREATE TABLE IF NOT EXISTS Pedidos (Id_pedidos INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Id_carrito INTEGER NOT NULL REFERENCES Carrito (Id_carrito) ON UPDATE CASCADE ON DELETE CASCADE, Id_cliente INTEGER NOT NULL REFERENCES Cliente (Id_cliente) ON UPDATE CASCADE ON DELETE CASCADE);

-- Tabla: Producto
CREATE TABLE IF NOT EXISTS Producto (Id_producto INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, nombre_producto TEXT (30) NOT NULL, stock INTEGER NOT NULL, precio REAL NOT NULL, imagen BLOB NOT NULL, Id_marca INTEGER NOT NULL REFERENCES Marca (Id_marca) ON UPDATE CASCADE ON DELETE CASCADE);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (1, 'Hot Dog', 150, 1.5, 'asdads.jpg', 1);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (2, 'Chorizo cocido', 150, 15.1, 'asdads2.jpg', 1);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (3, 'Frankfurter', 150, 10.3, 'asdads3.jpg', 1);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (4, 'Paté', 150, 3.3, 'asdads4.jpg', 1);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (5, 'Jamón de pavita', 150, 4.9, 'asdads5.jpg', 1);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (6, 'Chorizo Parrillero Brasa', 150, 16.6, 'asdads6.jpg', 1);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (7, 'Tocino ahumado', 150, 55.0, 'asdads7.jpg', 1);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (8, 'Jamonada de pavita', 150, 2.2, 'asdads8.jpg', 1);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (9, 'Hot dog ahumado de pollo', 150, 5.0, 'asdads9.jpg', 1);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (10, 'Ron', 150, 13.0, 'ron.jpg', 2);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (11, 'Cerveza Artesanal', 150, 5.0, 'cervart.jpg', 2);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (12, 'Vodka', 150, 5.0, 'vodka.jpg', 2);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (13, 'Leche Light', 150, 4.17, 'leche.jpg', 3);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (14, 'Yogurt Peotein Vainilla', 150, 10.89, 'yogurt.jpg', 3);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (15, 'Yogurt Mix Vainilla', 150, 3.23, 'yogut2.jpg', 3);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (16, 'Mantequilla', 150, 11.0, 'mantequilla.jpg', 3);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (17, 'Mantequilla Sin Sal', 150, 11.0, 'mantequilla2.jpg', 3);
INSERT INTO Producto (Id_producto, nombre_producto, stock, precio, imagen, Id_marca) VALUES (18, 'Queso Cheddar', 150, 15.0, 'asdads9.jpg', 3);

-- Tabla: Usuario
CREATE TABLE IF NOT EXISTS Usuario (Id_usuario INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, nombre_usuario TEXT(30) NOT NULL, contraseña TEXT(30) NOT NULL);
INSERT INTO Usuario (Id_usuario, nombre_usuario, contraseña) VALUES (1, 'RDagnino', 'admin');
INSERT INTO Usuario (Id_usuario, nombre_usuario, contraseña) VALUES (2, 'NinaMud', 'sunsune');
INSERT INTO Usuario (Id_usuario, nombre_usuario, contraseña) VALUES (3, 'MarceChad', 'cazaput4z69');
INSERT INTO Usuario (Id_usuario, nombre_usuario, contraseña) VALUES (4, 'Jhin4444', 'sublime');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
