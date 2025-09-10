CREATE TABLE productos(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	stock INT NOT NULL,
	price DECIMAL(10,2) NOT NULL,	
	modification_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

--tabla de categorías
CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT
);

-- Crear tabla de movimientos de stock
CREATE TABLE moves_stock (
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES productos(id),
    type_move VARCHAR(10) CHECK (type_move IN ('entrada','salida')),
    cant INT NOT NULL,
    dates TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    comment TEXT
);