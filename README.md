# MODULO 2 - Lenguaje de Consulta de Base de Datos | Ignacio Cavallo

## Introducción

En este módulo aprenderemos acerca de lenguajes de consulta de base de datos. Aquí iré detallando algunos de los logros y desafíos que alcancé durante el desarrollo de esta sección del curso.


## Conceptos Aprendidos

### Creación de una nueva **BASE DE DATOS**:

```sql
create database primeraDB character set  utf8;
```  

### Uso de la DB

```sql  
use primeraDB;
```   

### Creación de una **TABLA**

```sql  
create table primeraTabla(
        id_prime int auto_increment,
        nombre varchar(20),
        estatura float,
        fechaNacimiento date,
        descripcion text,
        primary key(id_prime)
);
```

### Modificar el *tipo de dato* de una columna

```sql  
    alter table primeraTabla add column edad int;
```  

### **Borrar una columna**:

```sql  
    ALTER TABLE tablaMartir
    DROP COLUMN columnaABorrar;
```  

### **Borrar una tabla**:

```sql
 DROP TABLE tablaMartir;
 ```

### **Agragar Datos a una Tabla**

 ```sql
 INSERT INTO tabla_Modificar(columna1, columna2,...)
 VALUES (valor_columna1, valor_columna2, ...);
 ```

## **Uso de Comandos**

Sintaxis:

```bash
CONSULTA = COMANDO  + CLAUSULA + OPERADOR + FUNCIÓN
```

### SELECT

```sql
SELECT campo from tabla

SELECT campo1, campo2 from tabla

SELECT * FROM tabla;
```   
Con algunas condiciones:

### WHERE

```sql
SELECT * FROM nombre, apellido  from nombre_tabla
WHERE campo = valor;
```
Condiciones *OR AND > <*
```sql
SELECT * FROM tabla WHERE campo1 = valor AND campo2= valor;
SELECT * FROM tabla WHERE campo1 = valor OR campo2= valor;
```

Borrar entrada en base a una condición
```sql
DELETE FROM nombre_tabla WHERE condición
```
*IN | NOT IN*
```sql
SELECT * FROM tabla WHERE campo IN(listado de valores);

SELECT * FROM empleado WHERE cargo IN ('Vendedor', 'Operario');

SELECT * FROM tabla WHERE campo  NOT IN(valor1, valor2,....);

SELECT * FROM empleado WHERE cargo NOT IN ('Vendedor', 'Operario');

```

*Distinto* < >

```SQL

SELECT * FROM tabla WHERE campo <> valor;


SELECT * FROM empleado WHERE cargo <> 'Jefe';
```


*BETWEEN*

```SQL

SELECT * FROM tabla WHERE campo BETWEEN valor_1 AND valor_2;


SELECT * FROM empleado WHERE fechaIngreso BETWEEN '2012-01-12' AND '2015-05-25';
SELECT * FROM empleado WHERE sueldo BETWEEN 1200 AND 2500;

```

*LIKE*
```SQL
SELECT * FROM tabla WHERE campo LIKE 'patrón'.

 --Termina con n ==> Tyron, Gordon, Marvin, Jordan, Gordon
SELECT * FROM empleado WHERE nombre like '%n'; 

-- Empieza con J ==> Jesse, Jordan, Jonah
SELECT * FROM empleado WHERE nombre like 'j%'; 

-- Empieza con A y termina Con N ==> 'A'lderso'n', 'A'nderso'n'
SELECT * FROM empleado WHERE apellidoP like 'a%n'; 

-- Contiene ar ==> H'ar'ry, 'Ar'thur, M'ar'vin
SELECT * FROM empleado WHERE nombre like '%ar%';

-- Contiene r en la segunda posición ==> F'r'eeman, P'r'ime, D'r'apper 
SELECT *  FROM empleado WHERE apellidoP like '_r%';

-- Empieza con d y contiene más de 3 caracteres.
-- Resultado ==> De rivia,  Dent,  Draper.
-- Excluyó ==> R2 D2(Es menor a tres caracteres.)

SELECT *  FROM empleado WHERE apellidoP like 'd___%';
````