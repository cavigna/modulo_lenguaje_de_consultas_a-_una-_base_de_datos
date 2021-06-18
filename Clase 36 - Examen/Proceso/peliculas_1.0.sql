

INSERT INTO genero(genero)
VALUES
    ('Acción'), 
    ('Animación'), 
    ('Ciencia Ficción'),
    ('Comedia'), 
    ('Drama'),
    ('Documental'),
    ('Suspenso'),
    ('Terror');


INSERT INTO critico(nombre)
VALUES
    ('IMDB'),
    ('Film Affinity')
    ('Ignacio Cavallo');

INSERT INTO actor(nombre, apellido, fecha_nacimiento, genero, pais)
VALUES
    ('Ricardo', 'Darin', '1957-01-16', 'm', 'Argentina'),
    ('Gastón', 'Pauls', '1972-01-17', 'm', 'Argentina'),
    ('Guillermo', 'Francella', '1955-02-14', 'm', 'Argentina'),
    ('Keanu', 'Reves', '1964-09-02', 'm', 'USA')
    ('Carrie-Anne', 'Moss','1967-08-21', 'f', 'USA'),
    ('Viggo', 'Mortensen', '1958-10-20', 'm','USA');

INSERT INTO pelicula(nombre, año, duracion, presupuesto, recaudacion, idioma, pais)
VALUES
    ('El secreto de sus ojos', 2009, 129, 2000000, 35079650, 'español', 'Argentina');

use peliculas;
SELECT 
    pelicula.nombre, genero.genero
FROM
    pelicula
        left JOIN
    genero_pelicula ON idPelicula = pelicula_idPelicula
        left JOIN
    genero ON idGenero = genero_idGenero;	


INSERT INTO pelicula(nombre, año, duracion, presupuesto, recaudacion, idioma, pais)
VALUES
('The Matrix', 1999, 138, 63000000, 465000000, 'Ingles', 'USA'),
('Hero', 2002, 119,	85000000, 29980000,	'Chino', 'China'),
('Memento',	2000, 113, 900000, 39723096, 'Ingles',	'USA'),
('Captain fantastic',2016, 118,	5000000, 22000000, 'Ingles', 'USA'),
('Inception', 2010, 148, 160000000, 825532764, 'Ingles', 'USA'),
('Snatch',	2000, 99, 10000000, 83600000, 'Ingles', 'UK'),
('Two smoking barrels',	1998, 105, 1400000, 28000000, 'Ingles', 'UK'),
('John Wick', 2014, 114, 20000000, 86013268, 'Ingles', 'USA'),
('El señor de los anillos', 2001, 178, 93000000, 870761744, 'Ingles', 'NZ'),
('9 reinas', 2000, 115, 1300000, 12413888, 'Español', 'Argentina'),
('El secreto de sus ojos', 2009, 129, 2000000, 35079650, 'Español',	'Argentina'),
('The Dark Knight',	2008, 152, 185000000, 1004558444,'Ingles','UK'),
('V for Vendetta', 2005, 132, 54000000, 425511035, 'Ingles', 'USA'),
('La casa de las dagas voladoras', 2004, 119, 30000000, 50000000, 'Chino', 'China'),
('The Wolf of Wall Street', 2013, 180, 100000000, 392000694, 'Ingles', 'USA'),
('The Curious Case of Benjamin Button', 2008, 116, 150000000, 333932083, 'Ingles','USA'),
('What We Do In The Shadows', 2014, 86, 1600000, 7253160, 'Ingles', 'NZ');


INSERT INTO director(nombre, apellido, fecha_nacimiento, genero, pais)
VALUES
('Lana', 'Wachowski', '1965-04-21', 'f', 'USA'),
('Lily', 'Wachowski', '1967-12-29', 'f', 'USA'),
('Zhang', 'Yimou', '1951-11-14', 'm', 'China'),
('Christopher', 'Nolan', '1970-07-30', 'm', 'UK'),
('Matt', 'Ross', '1970-01-03', 'm', 'USA'),
('Guy', 'Ritchie', '1968-09-10', 'm', 'UK'),
('Chad', 'Stahelski', '1968-09-20', 'm', 'USA'),
('Peter', 'Jackson', '1961-10-31', 'm', 'NZ'),
('Fabian', 'Bielinsky', '1959-02-03','m', 'Argentina'),
('Juan José', 'Campanella', '1959-07-19', 'm', 'Argentina'),
('Martin', 'Scorsese', '1942-11-17','m', 'USA'),
('David', 'Fincher', '1962-08-28', 'm', 'USA'),
('Taika', 'Waititi', '1975-08-16', 'm', 'NZ'),
('Jemaine', 'Clement', '1974-01-10', 'm', 'NZ');

INSERT INTO actor(nombre, apellido, fecha_nacimiento, genero, pais)
VALUES
    ('Ricardo', 'Darin', '1957-01-16', 'm', 'Argentina'),
    ('Gastón', 'Pauls', '1972-01-17', 'm', 'Argentina'),
    ('Guillermo', 'Francella', '1955-02-14', 'm', 'Argentina'),
    ('Keanu', 'Reves', '1964-09-02', 'm', 'USA'),
    ('Carrie-Anne', 'Moss','1967-08-21', 'f', 'Canada'),
    ('Viggo', 'Mortensen', '1958-10-20', 'm','USA'),
    ('Jet', 'Li', '1963-04-26', 'm', 'China'),
    ('Guy', 'Pearce', '1967-10-05', 'm', 'UK'),
    ('Joe', 'Pantoliano', '1951-09-12', 'm','USA'),
    ('Leonardo', 'DiCaprio','1974-11-11', 'm','USA'),
    ('Jason', 'Statham', '1966-07-26', 'm', 'UK'),
    ('Micael', 'Cane', '1933-03-14', 'm', 'UK'),
    ('Hugo', 'Weaving','1960-04-04', 'm', 'UK'),
    ('Elijah', 'Wood', '1981-01-28', 'm','USA'),
    ('Brad', 'Pitt', '1963-12-17', 'm','USA'),
    ('Christian', 'Bale', '1974-01-30', 'm', 'UK'),
    ('Ziyi', 'Zhang', '1979-02-09', 'f', 'China'),
    ('Natalie', 'Portman', '1981-07-09', 'f', 'USA'),
    ('Cate', 'Blanchet', '1969-05-14', 'f', 'Australia'),
    ('Taika', 'Waititi', '1975-08-16', 'm', 'NZ'),
    ('Jemaine', 'Clement', '1974-01-10', 'm', 'NZ');

INSERT INTO critico(nombre)
VALUES
    ('IMDB'),
    ('Film Affinity'),
    ('Ignacio Cavallo');


INSERT INTO puntaje(idPelicula, idCritico, calificacion)
VALUES 
(1, 1, 8.7),  (1, 2, 7.9), (1, 3, 8.5), 
(2, 1, 7.9),  (2, 2, 7.3), (2, 3, 8.2),
(3, 1, 7.4),  (3, 2, 7.9), (3, 3, 9.0),
(4, 1, 7.9),  (4, 2, 7.5), (4, 3, 8.7),
(5, 1, 8.8),  (5, 2, 8.0), (5, 3, 8.8),
(6, 1, 8.3),  (6, 2, 7.9), (6, 3, 9.0),
(7, 1, 8.2),  (7, 2, 7.8), (7, 3, 7.2),
(8, 1, 7.4),  (8, 2, 6.3), (8, 3, 6.3),
(9, 1, 8.8),  (9, 2, 8.0), (9, 3, 8.1),
(10, 1, 7.9), (10, 2, 7.8), (10, 3, 8.2),
(11, 1, 8.2), (11, 2, 8.1), (11, 3, 8.4),
(12, 1, 9.0), (12, 2, 8.1), (12, 3, 9.2),
(13, 1, 8.1), (13, 2, 7.5), (13, 3, 6.6),
(14, 1, 6.9), (14, 2, 7.0), (14, 3, 5.9),
(15, 1, 8.2), (15, 2, 7.6), (15, 3, 8.1),
(16, 1, 7.8), (16, 2, 7.2), (16, 3, 7.9),
(17, 1, 7.7), (17, 2, 6.8), (17, 3, 7.2);

INSERT INTO genero(genero)
VALUES
    ('Acción'), 
    ('Animación'), 
    ('Ciencia Ficción'),
    ('Comedia'), 
    ('Drama'),
    ('Documental'),
    ('Suspenso'),
    ('Terror');

INSERT INTO genero_pelicula(idPelicula, idGenero)
VALUES
(1, 1), (1, 3),
(2, 1), (2, 5),
(3, 1), (3, 7),
(4, 1), (4, 4),
(5, 1), (5, 3),
(6, 1), (6, 4),
(7, 1), (7, 4),
(8, 1), (8, 3),
(9, 1), (9, 3),
(10, 5), (10, 7),
(11, 5), (11, 7),
(12, 1), (12, 3),
(13, 1), (13, 3),
(14, 1), (14, 5),
(15, 4), (15, 5),
(16, 3), (16, 5),
(17, 4), (17, 6);




INSERT INTO personaje(idPelicula, idActor, nombre_personaje)
VALUES
(1, 4, 'Neo'), (1, 5, 'Trinity'), (1, 9, 'Cypher'), (1, 13, 'Agente Smith')
(2, 7, 'Nameless'), (2, 17, 'Moon'),
(3, 8, 'Leonard Shelby'), (3, 5, 'Natalie'),
(3, 9, 'Teddy Gammel'), 
(4, 6, 'Ben'),
(5, 10, 'Dominick Cobb'), (5, 12, 'Miles'),
(6, 11, 'Turco'), (6, 15, 'Mickey')
(7, 11, 'Bacon'),
(8, 4, 'John Wick'),
(9, 14, 'Frodo Baggins'), (9 6, 'Aragon'), (9, 19, 'Galadriel'), (9, 13, 'Elrond'),
(10, 1, 'Marcos'), (10, 2, 'Juan'),
(11, 1, 'Bejamín Espósito'), (11, 3, 'Pablo Sandoval'),
(12, 16, 'Batman'), (12, 12, 'Alfred'),
(13, 13, 'V'), (13, 18, 'Evey Hammond'),
(14, 17, 'Xiao Mei'),
(15, 10, 'Jordan Belfort'),
(16, 15, 'Benjamin Button'), (16, 19, 'Daisy Fuller'),
(16, 20, 'Viago'), (16, 21, 'Vladislav');



INSERT INTO direccion(idPelicula, idDirector)
VALUES
(1, 1), (1, 2),
(2, 2),
(3, 4),
(4, 5),
(5, 4),
(6, 6),
(7, 6),
(8, 7),
(9, 8),
(10, 9),
(11, 10),
(12, 4),
(13, 1),
(14, 3),
(15, 11),
(16, 12),
(17, 13),
(17, 14);


-- 1 - Matrix
-- 2 - Hero
-- 3 - Memento
-- 4 - Captain fantastic
-- 5 - Inception
-- 6 - Snatch
-- 7 - 2 smoking barrels
-- 8 - John Wick
-- 9 - lor
-- 10 - 9 reinas
-- 11- el secreto de sus ojos
-- 12 -  Batman
-- 13 - Vendetta
-- 14 -  casa de dagas
-- 15 - the Wolf of Wall
-- 16 -  benjamin
-- 17 - what whe do in the shados



use movies;


-- select DATEDIFF(2021,fecha_nacimiento,GETDATE()) as age from actor;
--Todas las peliculas
SELECT * FROM pelicula;
SELECT nombre, año FROM pelicula;
SELECT * FROM actor;
SELECT nombre, apellido, pais
FROM director;

SELECT nombre, año FROM pelicula WHERE pais = 'Argentina';

SELECT nombre FROM pelicula
WHERE año =2000 AND pais = 'Argentina';

SELECT nombre FROM pelicula
WHERE año=2000 OR año=2009;

SELECT nombre FROM pelicula
WHERE año>2010 and pais = 'nz';

SELECT nombre FROM pelicula
WHERE pais NOT IN ('USA', 'UK');

SELECT nombre FROM pelicula
WHERE pais  IN ('UK', 'NZ');

SELECT nombre, apellido FROM actor
WHERE genero <> 'm';

SELECT nombre, apellido FROM actor
WHERE nombre LIKE 'j%';

SELECT nombre, apellido FROM actor
WHERE nombre LIKE 'j___%';

SELECT nombre FROM pelicula
ORDER BY año;

SELECT nombre FROM pelicula
WHERE pais NOT IN('USA')
ORDER BY año DESC ;

SELECT pais, COUNT(*) AS cantidad
FROM pelicula
GROUP BY pais;

SELECT pais, SUM(recaudacion) as ingresos
FROM pelicula
GROUP BY pais
ORDER BY ingresos DESC;

-- Ingresos por país por año, ordenado por país
SELECT pais, año, SUM(recaudacion) as ingresos
FROM pelicula
GROUP BY año
ORDER BY pais;

SELECT nombre, (recaudacion - presupuesto) as ganancias
FROM pelicula;

SELECT nombre
FROM pelicula
WHERE recaudacion = 
(SELECT MAX(recaudacion) FROM pelicula);

SELECT nombre
FROM pelicula
WHERE recaudacion = 
(SELECT MAX(recaudacion) FROM pelicula);

-- Todas las peliculas y sus géneros
SELECT 
     g.genero, p.nombre
FROM
    pelicula p
        INNER  JOIN
    genero_pelicula gp ON p.idPelicula = gp.idPelicula
         inner JOIN
    genero g ON g.idGenero = gp.idGenero
    
    ORDER BY g.genero;	

-- Peliculas de acción
SELECT 
        p.nombre
FROM
    pelicula p
        INNER  JOIN
    genero_pelicula gp ON p.idPelicula = gp.idPelicula
         inner JOIN
    genero g ON g.idGenero = gp.idGenero
    
    WHERE g.genero = 'Acción';

SELECT pelicula.nombre, puntaje.calificacion, critico.idCritico
FROM
    pelicula 
        INNER JOIN
    puntaje ON pelicula.idPelicula = puntaje.idPelicula
        JOIN
    critico ON critico.idCritico = puntaje.idCritico;




------------UPDATE -------------


use movies;


-- select DATEDIFF(2021,fecha_nacimiento,GETDATE()) as age from actor;
--Todas las peliculas
SELECT * FROM pelicula;
SELECT nombre, año FROM pelicula;
SELECT * FROM actor;
SELECT nombre, apellido, pais
FROM director;

SELECT nombre, año FROM pelicula WHERE pais = 'Argentina';

SELECT nombre FROM pelicula
WHERE año =2000 AND pais = 'Argentina';

SELECT nombre FROM pelicula
WHERE año=2000 OR año=2009;

SELECT nombre FROM pelicula
WHERE año>2010 and pais = 'nz';

SELECT nombre FROM pelicula
WHERE pais NOT IN ('USA', 'UK');

SELECT nombre FROM pelicula
WHERE pais  IN ('UK', 'NZ');

SELECT nombre, apellido FROM actor
WHERE genero <> 'm';

SELECT nombre, apellido FROM actor
WHERE nombre LIKE 'j%';

SELECT nombre, apellido FROM actor
WHERE nombre LIKE 'j___%';

SELECT nombre FROM pelicula
ORDER BY año;

SELECT nombre FROM pelicula
WHERE pais NOT IN('USA')
ORDER BY año DESC ;

SELECT pais, COUNT(*) AS cantidad
FROM pelicula
GROUP BY pais;

SELECT pais, SUM(recaudacion) as ingresos
FROM pelicula
GROUP BY pais
ORDER BY ingresos DESC;

-- Ingresos por país por año, ordenado por país
SELECT pais, año, SUM(recaudacion) as ingresos
FROM pelicula
GROUP BY año
ORDER BY pais;

SELECT nombre, (recaudacion - presupuesto) as ganancias
FROM pelicula;

SELECT nombre
FROM pelicula
WHERE recaudacion = 
(SELECT MAX(recaudacion) FROM pelicula);

SELECT nombre
FROM pelicula
WHERE recaudacion = 
(SELECT MAX(recaudacion) FROM pelicula);

-- Todas las peliculas y sus géneros
SELECT 
     g.genero, p.nombre
FROM
    pelicula p
        INNER  JOIN
    genero_pelicula gp ON p.idPelicula = gp.idPelicula
         inner JOIN
    genero g ON g.idGenero = gp.idGenero
    
    ORDER BY g.genero;	

-- Peliculas de acción
SELECT 
        p.nombre
FROM
    pelicula p
        INNER  JOIN
    genero_pelicula gp ON p.idPelicula = gp.idPelicula
         inner JOIN
    genero g ON g.idGenero = gp.idGenero
    
    WHERE g.genero = 'Acción';

-- Todas las peliculas y sus puntajes
SELECT pelicula.nombre, puntaje.calificacion
FROM
    pelicula 
        INNER JOIN
    puntaje ON pelicula.idPelicula = puntaje.idPelicula;

SELECT pelicula.nombre, puntaje.calificacion, critico.idCritico
FROM
    pelicula 
        INNER JOIN
    puntaje ON pelicula.idPelicula = puntaje.idPelicula
        JOIN
    critico ON critico.idCritico = puntaje.idCritico;

SELECT pelicula.nombre, imdb.calificacion as IMDB, ff.calificacion as Film_Affinity, ic.calificacion as Ignacio_Cavallo
FROM pelicula
INNER JOIN
puntaje imdb ON pelicula.idPelicula = imdb.idPelicula
INNER JOIN
puntaje ff ON pelicula.idPelicula = ff.idPelicula and ff.idCritico=2
INNER JOIN
puntaje ic ON pelicula.idPelicula = ic.idPelicula AND ic.idCritico=3
GROUP BY pelicula.idPelicula;


-- Pelicula con su calificación por cada crítico
SELECT 
    pelicula.nombre,
    imdb.calificacion AS IMDB,
    ff.calificacion AS Film_Affinity,
    ic.calificacion AS Ignacio_Cavallo,
    ROUND((imdb.calificacion + ff.calificacion + ic.calificacion)/3.0,2) as Promedio
FROM
    pelicula
        INNER JOIN
    puntaje imdb ON pelicula.idPelicula = imdb.idPelicula
        INNER JOIN
    puntaje ff ON pelicula.idPelicula = ff.idPelicula
        AND ff.idCritico = 2
        INNER JOIN
    puntaje ic ON pelicula.idPelicula = ic.idPelicula
        AND ic.idCritico = 3
GROUP BY pelicula.idPelicula;


-- NO OLVIDAR CAMBIAR EL SEÑOR DE LOS ANILLOS

-- LOS ACTORES POR PELICULA
SELECT pelicula.nombre as nombre_pelicula, actor.nombre, actor.apellido
FROM
    actor
        INNER JOIN
    personaje ON actor.idActor = personaje.idActor
        JOIN 
    pelicula ON pelicula.idPelicula = personaje.idPelicula;

-- LOS ACTORES en una PELICULA ESPECIFICA
SELECT actor.nombre, actor.apellido, personaje.nombre_personaje
FROM
    actor
        INNER JOIN
    personaje ON actor.idActor = personaje.idActor
        JOIN 
    pelicula ON pelicula.idPelicula = personaje.idPelicula
    WHERE pelicula.nombre = 'El secreto de sus ojos';


-- Todos los directores por peliculas
SELECT pelicula.nombre as Título, director.nombre, director.apellido
FROM 
    director
        INNER JOIN
    direccion ON director.idDirector = direccion.idDirector
        INNER JOIN
    pelicula ON pelicula.idPelicula =direccion.idPelicula;

-- Todos los directores con más de una peli

SELECT 
    director.nombre,
    director.apellido,
    COUNT(direccion.idDirector) AS cantidad_peliculas
FROM
    director
        INNER JOIN
    direccion ON director.idDirector = direccion.idDirector
GROUP BY director.nombre , director.apellido
HAVING cantidad_peliculas > 1;

-- Todas las peliculas que son mayor al promedio segun mi puntuación
SELECT 
    pelicula.nombre,    
    ROUND(AVG(ic.calificacion), 2) as Promedio_Ignacio
        
FROM
    pelicula
        INNER JOIN
    puntaje imdb ON pelicula.idPelicula = imdb.idPelicula
        INNER JOIN
    puntaje ff ON pelicula.idPelicula = ff.idPelicula
        AND ff.idCritico = 2
        INNER JOIN
    puntaje ic ON pelicula.idPelicula = ic.idPelicula
        AND ic.idCritico = 3
GROUP BY pelicula.idPelicula
HAVING Promedio_Ignacio > AVG(Promedio_Ignacio);

--SELECT DATEDIFF ( yy , '1960-07-15' , '2019-10-22' ) 

SELECT *, DATEDIFF (CURDATE(), fecha_nacimiento) as edad
FROM actor;

SELECT nombre, YEAR(CURDATE()) - YEAR(fecha_nacimiento) AS age FROM ACTOR;



