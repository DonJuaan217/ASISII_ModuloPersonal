-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bd_hoteleria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_hoteleria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_hoteleria` DEFAULT CHARACTER SET utf8 ;
USE `bd_hoteleria` ;

-- -----------------------------------------------------
-- Table `bd_hoteleria`.`habitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_hoteleria`.`habitacion` (
  `NoHabitacion` INT(11) NOT NULL,
  `Tipo` VARCHAR(50) NOT NULL,
  `Descripcion` VARCHAR(300) NOT NULL,
  `Disponibilidad` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`NoHabitacion`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bd_hoteleria`.`folio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_hoteleria`.`folio` (
  `Id_gasto` INT(11) NOT NULL AUTO_INCREMENT,
  `Habitacion` INT(11) NOT NULL,
  `Id_reservacion` INT(11) NOT NULL,
  `TipoCliente` VARCHAR(50) NOT NULL,
  `Nombre` VARCHAR(50) NOT NULL,
  `Apellido` VARCHAR(50) NOT NULL,
  `Servicio` VARCHAR(50) NOT NULL,
  `Fecha` VARCHAR(50) NOT NULL,
  `Monto` INT(11) NOT NULL,
  `Descripcion` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`Id_gasto`),
  INDEX `fk_folio_habitacion1_idx` (`Habitacion` ASC))
ENGINE = MyISAM
AUTO_INCREMENT = 20
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bd_hoteleria`.`reservacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_hoteleria`.`reservacion` (
  `Id_reservacion` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(50) NOT NULL,
  `Apellido` VARCHAR(50) NOT NULL,
  `Tipo` VARCHAR(50) NOT NULL,
  `Habitacion` INT(11) NOT NULL,
  `FechaEntrada` VARCHAR(50) NOT NULL,
  `FechaSalida` VARCHAR(50) NOT NULL,
  `Monto` INT(11) NOT NULL,
  PRIMARY KEY (`Id_reservacion`),
  INDEX `fk_reservacion_habitacion_idx` (`Habitacion` ASC))
ENGINE = MyISAM
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

create view reporte_folio as select * from folio;

create view reporte_habitacion as select * from habitacion;

create view reporte_reservacion as select * from reservacion;