
-- Mostrar todos los productos
SELECT * FROM productos;

-- Productos sin stock
SELECT * FROM productos WHERE stock = 0;

-- Producto más caro
SELECT * FROM productos ORDER BY price DESC LIMIT 1;

-- Actualizar stock de un producto
UPDATE productos SET stock = stock - 1 WHERE id = 1;
