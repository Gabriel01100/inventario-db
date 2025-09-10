# Inventario
Este proyecto es una base de datos de inventario desarrollada en PostgreSQL para practicar 
conceptos fundamentales de administración de bases de datos: diseño, consultas, triggers y seguridad.

## Tecnologías
- PostgreSQL (pgAdmin4)
- SQL

## Esquema de la base de datos

La base cuenta con las siguientes tablas principales:

- **productos**: información de los artículos.
- **categorias**: clasificación de productos.
- **movimientos_stock**: entradas y salidas de stock.

## SQL

- `create_tables.sql`: crea las tablas.
- `insert_data.sql`: inserta datos de prueba.
- `queries.sql`: consultas típicas (productos sin stock, más caros, etc.).
- `trigger.sql`: trigger que actualiza automáticamente la fecha de modificación.

## Cómo probarlo

1. Abrir **pgAdmin4** o terminal psql.
2. Ejecutar los scripts en este orden:
   - `create_tables.sql`
   - `insert_data.sql`
   - `trigger.sql`
   - `queries.sql`
3. Revisar los resultados en la tabla `productos`.

## Qué aprendí

- Diseñar un esquema relacional básico.
- Crear y poblar tablas en PostgreSQL.
- Consultar datos con SELECTs.
- Implementar un trigger para automatizar la actualización de registros.
- Documentar y versionar proyectos en GitHub.
