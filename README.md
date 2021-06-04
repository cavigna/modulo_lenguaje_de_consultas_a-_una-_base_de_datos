# MODULO 2 - Lenguaje de Consulta de Base de Datos | Ignacio Cavallo

## Introducción

En este módulo aprenderemos acerca de lenguajes de consulta de base de datos. Aquí iré detallando algunos de los logros y desafíos que alcancé durante el desarrollo de esta sección del curso.


## Conceptos Aprendidos

creación de una nueva **BASE DE DATOS**:

```sql
create database primeraDB character set  utf8;
```  

Uso de la DB:

```sql  
use primeraDB;
```   
Creación de una **TABLA**:

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

Modificar el *tipo de dato* de una columna:

```sql  
    alter table primeraTabla add column edad int;
```  

**Borrar una columna**:
```sql  
    ALTER TABLE tablaMartir
    DROP COLUMN columnaABorrar;
```  

**Borrar una tabla**:

```sql
 DROP TABLE tablaMartir;
 ```

 **Agragar Datos a una Tabla**

 ```sql
 INSERT INTO tabla_Modificar(columna1, columna2,...)
 VALUES (valor_columna1, valor_columna2, ...);
 ```
