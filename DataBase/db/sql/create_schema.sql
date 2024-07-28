CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES categories(id)
);
CREATE TABLE inventory (
    id SERIAL PRIMARY KEY,
    producto_id INT,
    cantidad INT NOT NULL,
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES products(id)
);
CREATE TABLE suppliers (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    contacto VARCHAR(255)
);
CREATE TABLE product_supplier (
    id SERIAL PRIMARY KEY,
    producto_id INT,
    proveedor_id INT,
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES products(id),
    CONSTRAINT fk_proveedor FOREIGN KEY (proveedor_id) REFERENCES suppliers(id)
);
CREATE TABLE order_details (
    id SERIAL PRIMARY KEY,
    pedido_id VARCHAR(24) NOT NULL,
    producto_id INT,
    cantidad INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES products(id)
);
