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
SELECT pais, año, SUM(recaudacion) as Recaudación
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
SELECT nombre, YEAR(CURDATE()) - YEAR(fecha_nacimiento) 
AS edad 
FROM ACTOR

WHERE edad >= MAX(edad);



SELECT pelicula.nombre as nombre_pelicula, actor.nombre, actor.apellido, personaje.nombre_personaje
FROM
    actor
        INNER JOIN
    personaje ON actor.idActor = personaje.idActor
        JOIN 
    pelicula ON pelicula.idPelicula = personaje.idPelicula
    ORDER BY  pelicula.nombre;

SELECT 
    pelicula.nombre AS nombre_pelicula,
    actor.nombre,
    actor.apellido,
    personaje.nombre_personaje,
    pelicula.año -YEAR(actor.fecha_nacimiento) AS edad_personaje
FROM
    actor
        INNER JOIN
    personaje ON actor.idActor = personaje.idActor
        JOIN
    pelicula ON pelicula.idPelicula = personaje.idPelicula
ORDER BY pelicula.nombre;




SELECT * FROM personajes_de_pelicula
WHERE edad_personaje = (SELECT MAX(edad_personaje) FROM personajes_de_pelicula)
UNION 
SELECT * FROM personajes_de_pelicula
WHERE edad_personaje = (SELECT MIN(edad_personaje) FROM personajes_de_pelicula);


---VIEWS 
CREATE VIEW Personajes_de_Pelicula AS
SELECT 
    pelicula.nombre AS nombre_pelicula,
    actor.nombre,
    actor.apellido,
    personaje.nombre_personaje,
    pelicula.año -YEAR(actor.fecha_nacimiento) AS edad_personaje
FROM
    actor
        INNER JOIN
    personaje ON actor.idActor = personaje.idActor
        JOIN
    pelicula ON pelicula.idPelicula = personaje.idPelicula
ORDER BY pelicula.nombre;

CREATE VIEW directores_de_peliculas AS
SELECT 
    director.nombre, 
    director.apellido, 
    pelicula.año - YEAR(director.fecha_nacimiento) as edad_director,
    pelicula.nombre as Título
FROM 
    director
        INNER JOIN
    direccion ON director.idDirector = direccion.idDirector
        INNER JOIN
    pelicula ON pelicula.idPelicula =direccion.idPelicula;