-- Crear categorías
INSERT INTO categories (nombre) VALUES ('Electrónica');
INSERT INTO categories (nombre) VALUES ('Libros');
INSERT INTO categories (nombre) VALUES ('Ropa');

-- Crear productos
INSERT INTO products (nombre, descripcion, precio, categoria_id) VALUES ('Laptop', 'Laptop de última generación', 999.99, 1);
INSERT INTO products (nombre, descripcion, precio, categoria_id) VALUES ('Smartphone', 'Teléfono inteligente con cámara avanzada', 699.99, 1);
INSERT INTO products (nombre, descripcion, precio, categoria_id) VALUES ('Novela', 'Novela de misterio', 19.99, 2);
INSERT INTO products (nombre, descripcion, precio, categoria_id) VALUES ('Camisa', 'Camisa de algodón', 29.99, 3);

-- Crear inventario
INSERT INTO inventory (producto_id, cantidad) VALUES (1, 50);
INSERT INTO inventory (producto_id, cantidad) VALUES (2, 30);
INSERT INTO inventory (producto_id, cantidad) VALUES (3, 100);
INSERT INTO inventory (producto_id, cantidad) VALUES (4, 200);

-- Crear proveedores
INSERT INTO suppliers (nombre, contacto) VALUES ('Proveedor A', 'contacto@proveedora.com');
INSERT INTO suppliers (nombre, contacto) VALUES ('Proveedor B', 'contacto@proveedorb.com');

-- Relacionar productos y proveedores
INSERT INTO product_supplier (producto_id, proveedor_id) VALUES (1, 1);
INSERT INTO product_supplier (producto_id, proveedor_id) VALUES (2, 1);
INSERT INTO product_supplier (producto_id, proveedor_id) VALUES (3, 2);
INSERT INTO product_supplier (producto_id, proveedor_id) VALUES (4, 2);
