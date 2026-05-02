-- Query detallada: Ver los productos de la factura con ID 1
SELECT 
    df.id_factura,
    pr.nombre AS producto,
    df.cantidad,
    df.precio_unitario,
    df.subtotal
FROM detalle_factura df
JOIN producto pr ON df.id_producto = pr.id
WHERE df.id_factura = 1;
