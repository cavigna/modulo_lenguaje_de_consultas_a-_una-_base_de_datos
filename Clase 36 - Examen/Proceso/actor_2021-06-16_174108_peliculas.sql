/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS actor;
CREATE TABLE `actor` (
  `idActor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idActor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO actor(idActor,nombre,apellido,fecha_nacimiento,genero,pais) 
VALUES(1,'Ricardo','Darin','1957-01-16','m','Argentina'),
(2,'Gastón','Pauls','1972-01-17','m','Argentina'),(3,'Keanu','Reves','1964-09-02','m','USA'),(4,'Vigo','Mortensen','2016-06-01','m','USA');