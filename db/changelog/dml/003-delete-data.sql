--liquibase formatted sql
--changeset antigravity:9
INSERT INTO rol (nombre, descripcion) VALUES ('TEMPORAL', 'Rol de prueba para eliminación');
DELETE FROM rol WHERE nombre = 'TEMPORAL';
