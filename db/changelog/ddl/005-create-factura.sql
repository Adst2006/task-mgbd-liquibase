--liquibase formatted sql
--changeset antigravity:5
CREATE TABLE factura (
    id SERIAL PRIMARY KEY,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_persona INT NOT NULL,
    id_usuario INT NOT NULL,
    total DECIMAL(12, 2) NOT NULL DEFAULT 0,
    CONSTRAINT fk_factura_persona FOREIGN KEY (id_persona) REFERENCES persona(id),
    CONSTRAINT fk_factura_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);
