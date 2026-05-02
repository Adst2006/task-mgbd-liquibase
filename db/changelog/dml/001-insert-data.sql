--liquibase formatted sql
--changeset antigravity:7
INSERT INTO persona (nombre, apellido, dni, email, telefono) VALUES
('Juan', 'Perez', '12345678A', 'juan.perez@example.com', '600111222'),
('Maria', 'Gomez', '87654321B', 'maria.gomez@example.com', '600333444'),
('Carlos', 'Ruiz', '11223344C', 'carlos.ruiz@example.com', '600555666');

INSERT INTO rol (nombre, descripcion) VALUES
('ADMIN', 'Administrador del sistema con acceso total'),
('VENDEDOR', 'Usuario que realiza ventas y emite facturas'),
('CLIENTE', 'Rol para personas que compran (opcional)');

INSERT INTO usuario (username, password, id_persona, id_rol) VALUES
('admin_user', 'scrypt_hash_admin', 1, 1),
('maria_sales', 'scrypt_hash_maria', 2, 2);

INSERT INTO producto (nombre, descripcion, precio, stock) VALUES
('Laptop Pro', 'Laptop de alta gama para desarrollo', 1200.00, 10),
('Monitor 4K', 'Monitor 27 pulgadas Ultra HD', 350.00, 15),
('Teclado Mecánico', 'Teclado RGB con switches blue', 80.00, 50);

INSERT INTO factura (id_persona, id_usuario, total) VALUES
(3, 2, 1280.00),
(1, 2, 80.00);

INSERT INTO detalle_factura (id_factura, id_producto, cantidad, precio_unitario, subtotal) VALUES
(1, 1, 1, 1200.00, 1200.00),
(1, 3, 1, 80.00, 80.00),
(2, 3, 1, 80.00, 80.00);
