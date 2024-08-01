-- Crear categorías
INSERT INTO categories (nombre) VALUES ('Electrónica');
INSERT INTO categories (nombre) VALUES ('Libros');
INSERT INTO categories (nombre) VALUES ('Ropa');
INSERT INTO categories (nombre) VALUES ('Juguetes');
INSERT INTO categories (nombre) VALUES ('Alimentos');
INSERT INTO categories (nombre) VALUES ('Muebles');


-- Crear productos
INSERT INTO products (nombre, descripcion, precio, categoria_id) 
VALUES ('Laptop', 'Laptop de última generación', 999.99, 1),
('Smartphone', 'Teléfono inteligente con cámara avanzada', 699.99, 1),
('Tablet', 'Tablet de alta resolución', 499.99, 1),
('Novela', 'Novela de misterio', 19.99, 2),
('Enciclopedia', 'Enciclopedia completa', 299.99, 2),
('Cuentos Infantiles', 'Colección de cuentos infantiles', 39.99, 2),
('Camisa', 'Camisa de algodón', 29.99, 3),
('Pantalón', 'Pantalón de mezclilla', 49.99, 3),
('Vestido', 'Vestido de verano', 59.99, 3),
('Robot de juguete', 'Robot programable para niños', 89.99, 4),
('Peluche', 'Osito de peluche', 19.99, 4),
('Juego de mesa', 'Juego de mesa familiar', 49.99, 4),
('Cereal', 'Cereal integral', 5.99, 5),
('Chocolate', 'Barra de chocolate oscuro', 2.99, 5),
('Galletas', 'Paquete de galletas', 3.99, 5),
('Sofá', 'Sofá de tres plazas', 499.99, 6),
('Mesa de comedor', 'Mesa de comedor de madera', 299.99, 6),
('Silla', 'Silla ergonómica', 99.99, 6);

-- Crear inventario
INSERT INTO inventory (producto_id, cantidad) 
VALUES 
(1, 50),
(2, 30),
(3, 20),
(4, 100),
(5, 80),
(6, 60),
(7, 200),
(8, 150),
(9, 120),
(10, 40),
(11, 100),
(12, 70),
(13, 300),
(14, 250),
(15, 400),
(16, 10),
(17, 15),
(18, 25);


-- Crear proveedores
INSERT INTO suppliers (nombre, contacto) 
VALUES 
('Proveedor A', 'contacto@proveedora.com'),
('Proveedor B', 'contacto@proveedorb.com'),
('Proveedor C', 'contacto@proveedorc.com'),
('Proveedor D', 'contacto@proveedord.com'),
('Proveedor E', 'contacto@proveedore.com');


-- Relacionar productos y proveedores
INSERT INTO product_supplier (producto_id, proveedor_id) 
VALUES 
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5),
(11, 1),
(12, 1),
(13, 2),
(14, 2),
(15, 3),
(16, 3),
(17, 4),
(18, 4);

