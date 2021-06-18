-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema peliculas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema peliculas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `peliculas` DEFAULT CHARACTER SET utf8 ;
USE `peliculas` ;

-- -----------------------------------------------------
-- Table `peliculas`.`Actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `peliculas`.`Actor` (
  `idActor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `fecha_nacimiento` DATE NULL,
  `genero` VARCHAR(1) NULL,
  `pais` VARCHAR(45) NULL,
  PRIMARY KEY (`idActor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `peliculas`.`Director`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `peliculas`.`Director` (
  `idDirector` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `fecha_nacimiento` DATE NULL,
  `genero` VARCHAR(45) NULL,
  `pais` VARCHAR(45) NULL,
  PRIMARY KEY (`idDirector`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `peliculas`.`Critico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `peliculas`.`Critico` (
  `idCritico` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `fuente` LONGTEXT NULL,
  PRIMARY KEY (`idCritico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `peliculas`.`Pelicula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `peliculas`.`Pelicula` (
  `idPelicula` INT NOT NULL AUTO_INCREMENT,
  `nombre` TEXT NULL,
  `fecha_estreno` DATE NULL,
  `duracion` INT NULL,
  `presupuesto` INT NULL,
  `recaudacion` INT NULL,
  `idioma` TEXT NULL,
  `pais` TEXT NULL,
  PRIMARY KEY (`idPelicula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `peliculas`.`Genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `peliculas`.`Genero` (
  `idGenero` INT NOT NULL AUTO_INCREMENT,
  `genero` VARCHAR(45) NULL,
  PRIMARY KEY (`idGenero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `peliculas`.`Personaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `peliculas`.`Personaje` (
  `idPelicula` INT NOT NULL,
  `idActor` INT NOT NULL,
  `nombre_personaje` TEXT NULL,
  `edad` INT NULL,
  PRIMARY KEY (`idPelicula`, `idActor`),
  INDEX `fk_Pelicula_has_Actor_Actor1_idx` (`idActor` ASC) VISIBLE,
  INDEX `fk_Pelicula_has_Actor_Pelicula_idx` (`idPelicula` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_has_Actor_Pelicula`
    FOREIGN KEY (`idPelicula`)
    REFERENCES `peliculas`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pelicula_has_Actor_Actor1`
    FOREIGN KEY (`idActor`)
    REFERENCES `peliculas`.`Actor` (`idActor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `peliculas`.`Direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `peliculas`.`Direccion` (
  `Pelicula_idPelicula` INT NOT NULL,
  `Director_idDirector` INT NOT NULL,
  PRIMARY KEY (`Pelicula_idPelicula`, `Director_idDirector`),
  INDEX `fk_Pelicula_has_Director_Director1_idx` (`Director_idDirector` ASC) VISIBLE,
  INDEX `fk_Pelicula_has_Director_Pelicula1_idx` (`Pelicula_idPelicula` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_has_Director_Pelicula1`
    FOREIGN KEY (`Pelicula_idPelicula`)
    REFERENCES `peliculas`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pelicula_has_Director_Director1`
    FOREIGN KEY (`Director_idDirector`)
    REFERENCES `peliculas`.`Director` (`idDirector`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `peliculas`.`Puntaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `peliculas`.`Puntaje` (
  `Critico_idCritico` INT NOT NULL,
  `Pelicula_idPelicula` INT NOT NULL,
  `calificacion` FLOAT NULL,
  PRIMARY KEY (`Critico_idCritico`, `Pelicula_idPelicula`),
  INDEX `fk_Critico_has_Pelicula_Pelicula1_idx` (`Pelicula_idPelicula` ASC) VISIBLE,
  INDEX `fk_Critico_has_Pelicula_Critico1_idx` (`Critico_idCritico` ASC) VISIBLE,
  CONSTRAINT `fk_Critico_has_Pelicula_Critico1`
    FOREIGN KEY (`Critico_idCritico`)
    REFERENCES `peliculas`.`Critico` (`idCritico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Critico_has_Pelicula_Pelicula1`
    FOREIGN KEY (`Pelicula_idPelicula`)
    REFERENCES `peliculas`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `peliculas`.`Genero_Pelicula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `peliculas`.`Genero_Pelicula` (
  `Pelicula_idPelicula` INT NOT NULL,
  `Genero_idGenero` INT NOT NULL,
  PRIMARY KEY (`Pelicula_idPelicula`, `Genero_idGenero`),
  INDEX `fk_Pelicula_has_Genero_Genero1_idx` (`Genero_idGenero` ASC) VISIBLE,
  INDEX `fk_Pelicula_has_Genero_Pelicula1_idx` (`Pelicula_idPelicula` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_has_Genero_Pelicula1`
    FOREIGN KEY (`Pelicula_idPelicula`)
    REFERENCES `peliculas`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pelicula_has_Genero_Genero1`
    FOREIGN KEY (`Genero_idGenero`)
    REFERENCES `peliculas`.`Genero` (`idGenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
