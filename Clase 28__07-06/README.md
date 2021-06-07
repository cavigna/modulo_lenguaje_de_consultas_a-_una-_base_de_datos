# MODULO 2 - Base de Datos | Ignacio Cavallo

---

## Clase 28 | 07-06

### Conceptos Aprendidos:

**En clase:**

1. Creación de Tablas.
2. Selección de  valores en Tablas.
3. Comando SELECT.
4. Comando WHERE.

**Fuera de Clase:**

1. Utilizar Vs Code para SQL.
2. Usar ( ) para encapsular condiciones.

### Primera Parte

Usando la DB de la ultima clase, nos pidieron:

1. Utilizar el comando SELECT en 3 búsquedas en empleados.
2. Utilizar el comando SELECT en 3 búsquedas en Libros.


**Resultado Primera Parte**

1. SELECT empleado.

```sql
USE segundadb;

SELECT nombre FROM empleado;
SELECT nombre, apellidoP FROM empleado;
SELECT nombre, apellidoP, cargo FROM empleado;
SELECT nombre, apellidoP, fechaIngreso FROM empleado;
SELECT * FROM empleado;
```

2. SELECT libro.

```sql
#USO DE SELECT
SELECT nombreLibro FROM Libro;

SELECT nombreLibro, autor FROM libro;

SELECT nombreLibro, autor, categoria FROM libro;

SELECT * FROM libro;
```



### Segunda Parte

Requerimientos:

1. Utilizar el comando WHERE en 3 búsquedas en empleado.
2. Utilizar el comando WHERE en 3 búsquedas en Libro.
3. Utilizar el comando WHERE en 3 búsquedas  con AND/OR y < >.
4. Utilizar el comando WHERE con IN.

**Resultado Ejercicio**  

1. WHERE en  *Empleado*:

```sql
SELECT nombre, apellidoP FROM empleado WHERE cargo = "Brujo Senior";

SELECT nombre, apellidoP, cargo, sueldo FROM empleado WHERE sueldo >=2500;

SELECT nombre, apellidoP, cargo, sueldo FROM empleado WHERE sueldo <2000;

SELECT nombre, apellidoP, cargo FROM empleado 
WHERE apellidoP = "Goodman" OR apellidoP='De Rivia';
```

2. WHERE en *Libro*:

```sql
SELECT nombreLibro from Libro WHERE autor = 'Douglas Adam';

SELECT editorial from Libro WHERE autor = 'Jorge Luis Borges';

SELECT nombreLibro from Libro WHERE ejemplares >7500;

SELECT nombreLibro, añoPublicacion from Libro WHERE añoPublicacion>1980 AND añoPublicacion <1990;
```

3. WHERE + AND OR + > <=

```SQL
SELECT nombre, apellidoP, edad FROM empleado WHERE edad>=42 AND (departamento = 'Brujería y Hechizos'
OR departamento = 'Operaciones');

SELECT nombre, apellidoP, sueldo FROM empleado WHERE sueldo>2000 AND (departamento = 'Operaciones');

SELECT nombre, apellidoP, edad, sueldo FROM empleado WHERE sueldo<3500 AND sueldo>2000;

SELECT nombreLibro from Libro WHERE añoPublicacion>1980 AND añoPublicacion<2000 
AND (categoria ='Novela Gráfica' OR categoria ='Ciencia Ficción');

SELECT nombreLibro from Libro WHERE (autor="Alan Moore" OR autor="Mark Millar");

SELECT nombreLibro from Libro WHERE añoPublicacion>1990 AND añoPublicacion<2007 
AND ejemplares>7000;
```

4. WHERE IN
``` sql
SELECT * from empleado WHERE sueldo IN (2500, 3200);

SELECT nombre, departamento from empleado WHERE nombre IN('Geralt', 'Optimus', 'R2');

SELECT nombre, apellidoP, departamento from empleado WHERE departamento IN('Operaciones', 'Marketing', 'Ventas');

SELECT nombre, apellidoP from empleado WHERE departamento IN('Marketing', 'Ventas');

SELECT nombre, apellidoP, departamento, sueldo from empleado WHERE departamento IN('Operaciones', 'Ventas') AND sueldo>1500;


SELECT nombreLibro, autor FROM libro WHERE añoPublicacion IN(1983,1984);

SELECT nombreLibro, autor FROM libro WHERE añoPublicacion>1980 and añoPublicacion<1995 and autor IN('Douglas Adam', 'Alan Moore');

SELECT nombreLibro, autor FROM libro WHERE categoria IN('Ciencia Ficción', 'Novela Gráfica');

SELECT nombreLibro, autor, categoria FROM libro WHERE categoria IN('Ciencia Ficción', 'Novela Gráfica') and ejemplares<5000;
```
