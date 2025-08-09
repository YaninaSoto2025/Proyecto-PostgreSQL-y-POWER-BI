CREATE TABLE ventas (
    order_id INT,
    fecha DATE,
    producto TEXT,
    precio NUMERIC,
    cantidad NUMERIC,
    tipo_compra TEXT,
    metodo_pago TEXT,
    encargado TEXT,
    ciudad TEXT
);

 select * from ventas;
 drop table sales_data

 SELECT * FROM ventas LIMIT 10;
 
SELECT SUM(precio * cantidad) AS ingresos_totales
FROM ventas;

SELECT producto, SUM(cantidad) AS total_vendida
FROM ventas
GROUP BY producto
ORDER BY total_vendida DESC
LIMIT 10;

SELECT metodo_pago, COUNT(*) AS cantidad_operaciones
FROM ventas
GROUP BY metodo_pago
ORDER BY cantidad_operaciones DESC;

SELECT fecha, SUM(precio * cantidad) AS ingresos_diarios
FROM ventas
GROUP BY fecha
ORDER BY fecha;

SELECT ciudad, SUM(precio * cantidad) AS ingresos
FROM ventas
GROUP BY ciudad
ORDER BY ingresos DESC;

SELECT encargado, SUM(precio * cantidad) AS total_ingresos
FROM ventas
GROUP BY encargado
ORDER BY total_ingresos DESC;

SELECT tipo_compra, COUNT(*) AS cantidad
FROM ventas
GROUP BY tipo_compra;


