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
*IN*
```sql
SELECT * FROM tabla WHERE campo in(listado de valores)
SELECT * FROM empleado WHERE cargo('Vendedor', 'Operario')

```