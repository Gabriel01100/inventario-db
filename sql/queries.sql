
-- Mostrar todos los productos
SELECT * FROM productos;

-- Productos sin stock
SELECT * FROM productos WHERE stock = 0;

-- Producto más caro
SELECT * FROM productos ORDER BY price DESC LIMIT 1;

-- Actualizar stock de un producto
UPDATE productos SET stock = stock - 1 WHERE id = 1;


-- Listar productos con su categoría
SELECT p.id, p.name, p.stock, p.price, c.name AS category
FROM productos p
LEFT JOIN category c ON p.category_id = c.id;

-- Ver movimientos de stock de un producto
SELECT m.id, p.name, m.type_move, m.cant, m.dates, m.comment
FROM moves_stock m
JOIN productos p ON m.product_id = p.id
ORDER BY m.dates DESC;
