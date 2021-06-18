
CREATE DATABASE examen CHARACTER SET utf8;

USE examen;
CREATE TABLE producto (
    idproducto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45),
    descripcion TEXT,
    precio INT,
    stock INT,
    PRIMARY KEY (idproducto));

INSERT INTO producto(nombre, descripcion, precio, stock)
VALUES('Camiseta', 'Camiseta negra simple de talla única', 10,16),
    ('Pantalón', 'Pantalón largo azul tipo chino', 20,24),
    ('Gorra', 'Gorra azul con el logo de los Yankees', 15, 32),
    ('Zapatillas', 'Zapatillas de running de color blanco y verde', 35, 13);

--1.- Recuperar TODOS los datos de la tabla Productos (sin condición)
SELECT * FROM producto;

-- Recuperar los datos de la fila donde  el nombre del producto sea “Camiseta”.

SELECT * FROM producto WHERE nombre='Camiseta';

-- Recuperar los datos de las filas donde Stock sea menor que 20
SELECT * FROM producto WHERE stock<20;

-- Recuperar los datos de la fila con ProductoID 3
SELECT * FROM producto WHERE idproducto = 3;

-- Eliminar las filas de productos donde el stock sea mayor o igual a 20
SELECT * FROM producto WHERE stock >=20;
