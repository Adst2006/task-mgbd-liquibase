--liquibase formatted sql
--changeset antigravity:8
UPDATE producto SET precio = 1150.00 WHERE nombre = 'Laptop Pro';
UPDATE rol SET descripcion = 'Acceso total y gestión de usuarios' WHERE nombre = 'ADMIN';
