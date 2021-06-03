# MODULO 2 - Base de Datos | Ignacio Cavallo

---

## Clase 26 | 03-06

Hoy comenzamos con la creación de una nueva **BASE DE DATOS** con el comando:

```sql
create database primeraDB character set  utf8;
```  

Usamos la DB con:  

```sql  
use primeraDB;
```  

Creamos la primera **TABLA**:

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

Alteramos el tipo de dato de alguna columna con: 

```sql  
    alter table primeraTabla add column edad int;
```  

Después creamos algunas otras tablas, como por ejemplo:

```sql  
    create table  personajes(
            id int auto_increment,
            nombre varchar(20),
            estatura float,
            peso float,
            edad int,
            procedencia int,
            descripcion text,
            campoaBorrar text,
            primary key(id)
);
alter table personajes modify procedencia text;
alter table personajes drop column campoaBorrar; 
``` 
Por último, creamos una tabla para borrarla posteriormente. Aquí yace la *tablaMártir*.

```sql
CREATE TABLE tablaMartir(
    id int auto_increment,
    nombreMartir varchar(10),
    estaturaMartir float,
    pesoMartir float,
    edadmartir int,
    primary key(id)
);
DROP TABLE tablaMartir;

```