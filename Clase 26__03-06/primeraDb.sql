#create database primeraDB character set  utf8;
use primeraDB;
create table primeraTabla(
id_prime int auto_increment,
nombre varchar(20),
estatura float,
fechaNacimiento date,
descripcion text,
primary key(id_prime)
);

alter table primeraTabala add column edad int;
# Borré mi primera tabla por que tipeé primeraTabala en vez de primeraTabla;
DROP TABLE primeraTabala;

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

CREATE TABLE tablaMartir(
    id int auto_increment,
    nombreMartir varchar(10),
    estaturaMartir float,
    pesoMartir float,
    edadmartir int,
    primary key(id)
);

drop table tablaMartir;



