CREATE TABLE categories (
    id BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE products (
    id BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    categoria_id BIGINT,
    CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES categories(id)
);

CREATE TABLE inventory (
    id BIGSERIAL PRIMARY KEY,
    producto_id BIGINT,
    cantidad INT NOT NULL,
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES products(id)
);

CREATE TABLE suppliers (
    id BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    contacto VARCHAR(255)
);

CREATE TABLE product_supplier (
    id BIGSERIAL PRIMARY KEY,
    producto_id BIGINT,
    proveedor_id BIGINT,
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES products(id),
    CONSTRAINT fk_proveedor FOREIGN KEY (proveedor_id) REFERENCES suppliers(id)
);

CREATE TABLE order_details (
    id BIGSERIAL PRIMARY KEY,
    pedido_id VARCHAR(24) NOT NULL,
    producto_id BIGINT,
    cantidad INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES products(id)
);
