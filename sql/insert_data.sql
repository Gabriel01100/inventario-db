INSERT INTO productos (name, stock, price) 
VALUES  ('Mouse Logitech', 10, 5000),
		('Teclado Redragon', 10, 15000.00),
		('Monitor Samsung', 5, 85000.00);


-- Insertar datos de prueba
INSERT INTO category (name, description)
VALUES
('Periféricos', 'Mouse, Teclados, Auriculares'),
('Monitores', 'Monitores LCD, LED, Curvos'),
('Componentes', 'Placas de video, RAM, Motherboard');


-- Insertar datos de prueba
INSERT INTO moves_stock (product_id, type_move, cant, comment)
VALUES
(1, 'entrada', 10, 'Ingreso inicial de stock'),
(2, 'salida', 2, 'Venta a cliente'),
(3, 'entrada', 5, 'Reabastecimiento');
