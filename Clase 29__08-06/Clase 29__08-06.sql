USE segundadb;

SELECT * FROM Libro WHERE ejemplares>1000;

SELECT nombre, apellidoP, apellidoM, cargo FROM empleado WHERE 
departamento IN ('Ventas', 'Brujería y Hechizos') AND sueldo >2300;

SELECT * FROM Libro WHERE edicion IN(1,3) AND autor = 'Mark Millar';

SELECT autor FROM libro WHERE edicion IN (1,2,3);

SELECT * FROM empleado WHERE departamento IN ('Brujería y Hechizos');

SELECT * FROM empleado WHERE departamento IN('Operaciones');

SELECT * FROM empleado WHERE departamento NOT IN('Operaciones', 'Brujería y Hechizos');

SELECT nombre, apellidoP,  cargo FROM empleado WHERE nombre NOT IN
('Geralt', 'Walter', 'Jesse', 'Jordan');

SELECT nombre, apellidoP FROM empleado WHERE cargo <> 'Vendedor';

SELECT nombre, apellidoP FROM empleado WHERE departamento <> 'Operaciones';

SELECT * FROM libro WHERE categoria <> 'Ciencia Ficción';

SELECT * FROM empleado WHERE fechaIngreso BETWEEN '2008-01-01' AND '2012-12-12';

SELECT * FROM empleado WHERE sueldo BETWEEN 2500 AND 3500;

SELECT * FROM empleado WHERE fechaIngreso BETWEEN'2019-01-12' AND '2021-06-08';

SELECT * FROM Libro WHERE añoPublicacion BETWEEN '1920-12-12' AND '1985-03-16';

 --Termina con n ==> Tyron, Gordon, Marvin, Jordan, Gordon
SELECT * FROM empleado WHERE nombre like '%n'; 

-- Empieza con J ==> Jesse, Jordan, Jonah
SELECT * FROM empleado WHERE nombre like 'j%'; 

-- Empieza con A y termina Con N ==> Alderson, Anderson
SELECT * FROM empleado WHERE apellidoP like 'a%n'; 

-- Contiene ar ==> H'ar'ry, 'Ar'thur, M'ar'vin
SELECT * FROM empleado WHERE nombre like '%ar%';

-- Contiene r en la segunda posición ==> F'r'eeman, P'r'ime, D'r'apper 
SELECT *  FROM empleado WHERE apellidoP like '_r%';

-- Empieza con d y contiene más de 3 caracteres
-- Resultado ==> Geralt De rivia, Atrhut Dent, Donald Draper
-- Exculyó ==> R2 D2(Es menor a tres caracteres.)

SELECT *  FROM empleado WHERE apellidoP like 'd___%';
