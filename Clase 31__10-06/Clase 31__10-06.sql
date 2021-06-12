SELECT nombre, apellidoP, cargo, departamento, sueldo
FROM empleado WHERE sueldo = 
(SELECT MAX(sueldo) FROM empleado);

SELECT nombre, apellidoP, cargo, departamento, sueldo
FROM empleado WHERE sueldo = 
(SELECT MIN(sueldo) FROM empleado);


SELECT departamento, COUNT(*) 
AS cantidad_empleados 
FROM empleado 
GROUP BY departamento 
ORDER BY cantidad_empleados DESC;

SELECT SUM(sueldo) as gasto_mensual_total FROM empleado;

SELECT editorial, COUNT(*) AS cantidad_Libros 
FROM libro
GROUP BY editorial
order by cantidad_Libros DESC;

SELECT SUM(ejemplares) 
AS cantidad_ejemplares 
FROM libro;