-- Query con JOIN: Listar facturas con el nombre del cliente (persona) y el total
SELECT 
    f.id AS factura_id,
    f.fecha,
    p.nombre || ' ' || p.apellido AS cliente,
    f.total
FROM factura f
JOIN persona p ON f.id_persona = p.id
ORDER BY f.fecha DESC;
