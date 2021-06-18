
--Peliculas
INSERT INTO pelicula(nombre, año, duracion, presupuesto, recaudacion, idioma, pais)
VALUES
('The Matrix', 1999, 138, 63000000, 465000000, 'Ingles', 'USA'),
('Hero', 2002, 119,	85000000, 29980000,	'Chino', 'China'),
('Memento',	2000, 113, 90000000, 39723096, 'Ingles',	'USA'),
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

-- Director
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

--Actor/Actriz
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

--Criticos
INSERT INTO critico(nombre)
VALUES
    ('IMDB'),
    ('Film Affinity'),
    ('Ignacio Cavallo');

--Calificación por película
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

--Genero
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

-- Genero de la Pelicula
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



-- Personajes
INSERT INTO personaje(idPelicula, idActor, nombre_personaje)
VALUES
(1, 4, 'Neo'), (1, 5, 'Trinity'), (1, 9, 'Cypher'), (1, 13, 'Agente Smith'),
(2, 7, 'Nameless'), (2, 17, 'Moon'),
(3, 8, 'Leonard Shelby'), (3, 5, 'Natalie'),
(3, 9, 'Teddy Gammel'), 
(4, 6, 'Ben'),
(5, 10, 'Dominick Cobb'), (5, 12, 'Miles'),
(6, 11, 'Turco'), (6, 15, 'Mickey'),
(7, 11, 'Bacon'),
(8, 4, 'John Wick'),
(9, 14, 'Frodo Baggins'), (9, 6, 'Aragon'), (9, 19, 'Galadriel'), (9, 13, 'Elrond'),
(10, 1, 'Marcos'), (10, 2, 'Juan'),
(11, 1, 'Bejamín Espósito'), (11, 3, 'Pablo Sandoval'),
(12, 16, 'Batman'), (12, 12, 'Alfred'),
(13, 13, 'V'), (13, 18, 'Evey Hammond'),
(14, 17, 'Xiao Mei'),
(15, 10, 'Jordan Belfort'),
(16, 15, 'Benjamin Button'), (16, 19, 'Daisy Fuller'),
(17, 20, 'Viago'), (17, 21, 'Vladislav');


-- Dirección | pelicula dirigida por
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