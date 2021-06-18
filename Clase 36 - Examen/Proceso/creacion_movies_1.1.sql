-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movies` DEFAULT CHARACTER SET utf8 ;
USE `movies` ;

-- -----------------------------------------------------
-- Table `movies`.`Actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`Actor` (
  `idActor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `fecha_nacimiento` DATE NULL,
  `genero` VARCHAR(1) NULL,
  `pais` VARCHAR(45) NULL,
  PRIMARY KEY (`idActor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`Director`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`Director` (
  `idDirector` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `fecha_nacimiento` DATE NULL,
  `genero` VARCHAR(45) NULL,
  `pais` VARCHAR(45) NULL,
  PRIMARY KEY (`idDirector`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`Critico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`Critico` (
  `idCritico` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idCritico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`Pelicula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`Pelicula` (
  `idPelicula` INT NOT NULL AUTO_INCREMENT,
  `nombre` TEXT NULL,
  `año` INT NULL,
  `duracion` INT NULL,
  `presupuesto` INT NULL,
  `recaudacion` INT NULL,
  `idioma` TEXT NULL,
  `pais` TEXT NULL,
  PRIMARY KEY (`idPelicula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`Genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`Genero` (
  `idGenero` INT NOT NULL AUTO_INCREMENT,
  `genero` VARCHAR(45) NULL,
  PRIMARY KEY (`idGenero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`Personaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`Personaje` (
  `idPelicula` INT NOT NULL,
  `idActor` INT NOT NULL,
  `nombre_personaje` TEXT NULL,
  PRIMARY KEY (`idPelicula`, `idActor`),
  INDEX `fk_Pelicula_has_Actor_Actor1_idx` (`idActor` ASC) VISIBLE,
  INDEX `fk_Pelicula_has_Actor_Pelicula_idx` (`idPelicula` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_has_Actor_Pelicula`
    FOREIGN KEY (`idPelicula`)
    REFERENCES `movies`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pelicula_has_Actor_Actor1`
    FOREIGN KEY (`idActor`)
    REFERENCES `movies`.`Actor` (`idActor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`Direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`Direccion` (
  `idPelicula` INT NOT NULL,
  `idDirector` INT NOT NULL,
  PRIMARY KEY (`idPelicula`, `idDirector`),
  INDEX `fk_Pelicula_has_Director_Director1_idx` (`idDirector` ASC) VISIBLE,
  INDEX `fk_Pelicula_has_Director_Pelicula1_idx` (`idPelicula` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_has_Director_Pelicula1`
    FOREIGN KEY (`idPelicula`)
    REFERENCES `movies`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pelicula_has_Director_Director1`
    FOREIGN KEY (`idDirector`)
    REFERENCES `movies`.`Director` (`idDirector`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`Puntaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`Puntaje` (
  `idCritico` INT NOT NULL,
  `idPelicula` INT NOT NULL,
  `calificacion` FLOAT NULL,
  PRIMARY KEY (`idCritico`, `idPelicula`),
  INDEX `fk_Critico_has_Pelicula_Pelicula1_idx` (`idPelicula` ASC) VISIBLE,
  INDEX `fk_Critico_has_Pelicula_Critico1_idx` (`idCritico` ASC) VISIBLE,
  CONSTRAINT `fk_Critico_has_Pelicula_Critico1`
    FOREIGN KEY (`idCritico`)
    REFERENCES `movies`.`Critico` (`idCritico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Critico_has_Pelicula_Pelicula1`
    FOREIGN KEY (`idPelicula`)
    REFERENCES `movies`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`Genero_Pelicula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`Genero_Pelicula` (
  `idPelicula` INT NOT NULL,
  `idGenero` INT NOT NULL,
  PRIMARY KEY (`idPelicula`, `idGenero`),
  INDEX `fk_Pelicula_has_Genero_Genero1_idx` (`idGenero` ASC) VISIBLE,
  INDEX `fk_Pelicula_has_Genero_Pelicula1_idx` (`idPelicula` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_has_Genero_Pelicula1`
    FOREIGN KEY (`idPelicula`)
    REFERENCES `movies`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pelicula_has_Genero_Genero1`
    FOREIGN KEY (`idGenero`)
    REFERENCES `movies`.`Genero` (`idGenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`Critico_copy1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`Critico_copy1` (
  `idCritico` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idCritico`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
