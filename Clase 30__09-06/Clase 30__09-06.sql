SELECT  * FROM libro WHERE editorial NOT IN ('Pan Books', 'Destino');

SELECT nombreLibro, editorial, ejemplares FROM libro WHERE ejemplares BETWEEN 1000 AND 3300;

--Determinar los datos de los libros que empiecen con la letra (letra determinada por ustedes).
SELECT * FROM libro WHERE nombreLibro LIKE 'e%';

SELECT nombre, apellidoP, cargo FROM empleado WHERE sueldo BETWEEN 500 AND 1500;

--Determinar nombre, apellidoP, apellidoM, cargo, deaprtamento y edad de los empleados que no pertenecen al departamento (departamento definido por ustedes).

SELECT nombre, apellidoP, apellidoM, cargo, departamento, edad  
FROM empleado WHERE departamento NOT IN ('Operaciones', 'Finanzas');

-- ORDER BY ASC es el default;
SELECT * FROM empleado ORDER BY apellidoP ASC; 

SELECT * FROM empleado ORDER BY apellidoP DESC;

SELECT nombre, apellidoP, cargo, sueldo FROM empleado ORDER BY sueldo DESC;

SELECT nombre, apellidoP, cargo FROM empleado ORDER BY cargo ASC;

SELECT * FROM libro ORDER BY  añoPublicacion;
SELECT nombreLibro, autor, añoPublicacion FROM libro ORDER BY  añoPublicacion DESC;

SELECT  nombreLibro, autor FROM libro ORDER BY autor;

SELECT nombreLibro FROM libro ORDER BY nombreLibro;

SELECT nombreLibro, autor FROM libro ORDER BY ejemplares DESC;

SELECT * FROM empleado GROUP BY departamento;


SELECT COUNT(*) AS cantidad_libros, edicion FROM libro GROUP BY edicion;

-- Mayor Sueldo por departamento    
SELECT  nombre, apellidoP, cargo, departamento, MAX(sueldo) 
AS Sueldo_Mayor
FROM empleado 
GROUP BY departamento 
ORDER BY Sueldo_Mayor DESC;

-- Menor Sueldo por Departamento
SELECT nombre, cargo, departamento, MIN(sueldo)
AS Menor_Sueldo
FROM empleado
GROUP BY departamento
ORDER BY Menor_Sueldo;

-- Cantidad Libros por Autor
SELECT autor, COUNT(*) AS  cantidad_libros
FROM libro
GROUP BY autor
ORDER BY cantidad_libros DESC;

-- Cantidad de Libros Publicados por Año.
SELECT añoPublicacion, COUNT(añoPublicacion) AS cantidad_libros_publicados
FROM libro
GROUP BY añoPublicacion
ORDER BY añoPublicacion DESC;


--Cantidad de libros Publicados por autor
-- entre 1985 y 1999
SELECT autor, COUNT(*) 
AS  cantidad_libros
FROM libro 
WHERE añoPublicacion
BETWEEN 1985 AND 1999
GROUP BY autor
ORDER BY cantidad_libros DESC;

-- Sueldo Promedio por departamento

SELECT departamento, AVG(sueldo)
AS salario_promedio
FROM empleado
GROUP BY departamento
ORDER BY salario_promedio;

-- Suma de la cantidad de ejemplares
SELECT SUM(ejemplares) FROM Libro;

-- SUMA de ejemplares por categoría
SELECT categoria,  SUM(ejemplares) AS cantidad_categoria
FROM libro
GROUP BY categoria
ORDER BY cantidad_categoria;

-- Cantidad de Libros por categoría
SELECT categoria, COUNT(*) AS cantidad
FROM libro
GROUP BY categoria;

-- Promedio de Ejemplares por Autor
SELECT autor, AVG(ejemplares)
AS promedio
FROM libro
GROUP BY autor
ORDER BY promedio DESC;

-- Promedio edad Empresa

SELECT AVG(edad) from empleado;

-- Promedio edad por Departamento 

SELECT departamento, AVG(edad)
AS promedio_edad
FROM empleado
GROUP BY departamento
ORDER BY promedio_edad DESC;

-- Mayor Edad por Departamento

SELECT nombre, apellidoP, departamento, MAX(edad)
AS viejaso
FROM empleado
GROUP BY departamento
ORDER BY viejaso DESC;
