CREATE DATABASE tienda;

USE tienda;

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precioOriginal DECIMAL(10, 2) NOT NULL,
    precioDescuento DECIMAL(10, 2) NOT NULL,
    imagen VARCHAR(255) NOT NULL,
    cantidad INT NOT NULL
);



INSERT INTO productos (nombre, precioOriginal, precioDescuento, imagen, cantidad)
VALUES
('Procesador AMD Ryzen 5', 299000, 199000, 'imagenes/procesador.jpg',10),
('Tarjeta Gráfica NVIDIA GTX 1660', 1499000, 1299000, 'imagenes/tarjeta.jpg',5),
('Memoria RAM 16GB DDR4', 399000, 349000, 'imagenes/ram.jpg',7),
('Mouse inalámbrico', 399000, 299000, 'imagenes/mouse.jpg',15),
('Case para computador', 1299000, 999000, 'imagenes/case.jpg',8),
('Teclado mecánico', 299000, 99000, 'imagenes/teclado.jpg',20);

CREATE TABLE historial_compras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);

CREATE TABLE comentarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT NOT NULL,
    comentario TEXT NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);
