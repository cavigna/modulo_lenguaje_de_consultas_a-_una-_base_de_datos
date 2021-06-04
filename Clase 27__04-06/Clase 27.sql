create database segundaDB character set utf8;

use segundaDB;

create table persona(
    id integer auto_increment,
    nombre varchar(15),
    estatura float,
    fechaNacimiento date,
    descripcion text,
    campoaBorrar date,
    primary key (id)

);

create table producto(
    id integer auto_increment,
    descripcion text,
    cantidad integer,
    peso float,
    campoaBorrar date,
    primary key (id)
);

ALTER TABLE persona ADD campoaAgregar integer;
ALTER TABLE producto ADD campoaAgregar integer;

ALTER TABLE persona modify campoaBorrar integer;
ALTER TABLE producto modify campoaBorrar integer;

ALTER TABLE persona DROP campoaBorrar;
ALTER TABLE producto DROP campoaBorrar;

INSERT INTO personajes (nombre, estatura, peso, edad,procedencia, descripcion)
VALUES ("Geralt de Rivia", 1.87, 85.3, 102, "Kaer Morhen", "Brujo Mercenario");

INSERT INTO personajes (nombre, estatura, peso, edad,procedencia, descripcion)
VALUES ("Ezio Auditore", 1.85, 75.3, 102, "Firenze", "Asesino Renacentista");

SELECT * FROM personajes;