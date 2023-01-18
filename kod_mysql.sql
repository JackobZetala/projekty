-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`projekt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`projekt` (
  `id_projekt` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(45) NULL,
  `data` DATE NOT NULL,
  PRIMARY KEY (`id_projekt`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`produkt_fizyczny`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`produkt_fizyczny` (
  `id_prod_fiz` INT NOT NULL AUTO_INCREMENT,
  `Stan` VARCHAR(45) NULL,
  `id_projekt` INT NOT NULL,
  PRIMARY KEY (`id_prod_fiz`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`produkt_opisowy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`produkt_opisowy` (
  `id_prod_opis` INT NOT NULL AUTO_INCREMENT,
  ` Nazwa` VARCHAR(45) NOT NULL,
  `Jednostka_pods` VARCHAR(45) NOT NULL,
  `Jednostki_w_sztuce` VARCHAR(45) NOT NULL,
  `Opis` VARCHAR(200) NULL,
  `Typ` VARCHAR(45) NULL,
  `Producent` VARCHAR(45) NOT NULL,
  `Podtyp` VARCHAR(45) NULL,
  `Material` VARCHAR(45) NULL,
  `Kolor` VARCHAR(45) NULL,
  `Dlugosc_nominalna` INT NULL,
  `Szerokosc_nominalna` INT NULL,
  `Grubosc` INT NULL,
  `Struktura` VARCHAR(45) NULL,
  `Gradacja` INT NULL,
  `Srednica` INT NULL,
  PRIMARY KEY (`id_prod_opis`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`rel_odpowiada`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rel_odpowiada` (
  `id_prod_fiz` INT NOT NULL,
  `id_prod_opis` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`dostawca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dostawca` (
  `id_dostawcy` INT NOT NULL AUTO_INCREMENT,
  `Email` VARCHAR(45) NULL,
  `Adres` VARCHAR(45) NULL,
  `Nazwa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_dostawcy`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`zamowienie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`zamowienie` (
  `id_zamowienie` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(45) NULL,
  `id_dostawcy` INT NOT NULL,
  PRIMARY KEY (`id_zamowienie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`oferta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`oferta` (
  `kod_oferty` INT NOT NULL AUTO_INCREMENT,
  `cena_za_jedn` INT NOT NULL,
  `cena_za_szt` INT NOT NULL,
  `czas_realizacji_w_dniach` INT NULL,
  `id_dostawcy` INT NOT NULL,
  PRIMARY KEY (`kod_oferty`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`uzytkownik`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`uzytkownik` (
  `id_uzytkownika` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NULL,
  `rola` VARCHAR(45) NULL,
  `imie` VARCHAR(45) NULL,
  `nazwisko` VARCHAR(45) NULL,
  `haslo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_uzytkownika`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`magazyn`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`magazyn` (
  `id_magazynu` INT NOT NULL AUTO_INCREMENT,
  `lokalizacja` VARCHAR(45) NULL,
  PRIMARY KEY (`id_magazynu`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`przestrzen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`przestrzen` (
  `id_przestrzeni` INT NOT NULL AUTO_INCREMENT,
  `kategoria` VARCHAR(45) NULL,
  `nazwa` VARCHAR(45) NOT NULL,
  `polozenie_x` INT NULL,
  `max_ilosc` INT NULL,
  `id_magazynu` INT NOT NULL,
  `polozenie_y` INT NULL,
  PRIMARY KEY (`id_przestrzeni`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`paczka`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`paczka` (
  `id_paczki` INT NOT NULL AUTO_INCREMENT,
  `pojemnosc` INT NULL,
  `typ_skladania` VARCHAR(45) NULL,
  `id_przestrzeni` INT NOT NULL,
  `ilosc` INT NOT NULL,
  `id_prod_fiz` INT NOT NULL,
  `pozycja` VARCHAR(45) NULL,
  PRIMARY KEY (`id_paczki`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`dostawa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dostawa` (
  `id_dostawy` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(45) NULL,
  `przewidywany_termin` DATE NULL,
  `id_magazynu` INT NOT NULL,
  `id_dostawcy` INT NOT NULL,
  PRIMARY KEY (`id_dostawy`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`rel_potrzebuje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rel_potrzebuje` (
  `id_projekt` INT NOT NULL,
  `id_prod_opis` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`rel_zawiera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rel_zawiera` (
  `id_dostawy` INT NOT NULL,
  `id_paczki` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`rel_sklada_sie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rel_sklada_sie` (
  `id_zamowienie` INT NOT NULL,
  `id_prod_opis` INT NOT NULL,
  `ilosc` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`rel_oferuje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rel_oferuje` (
  `kod_oferty` INT NOT NULL,
  `id_prod_opis` INT NOT NULL,
  `ilosc` INT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
