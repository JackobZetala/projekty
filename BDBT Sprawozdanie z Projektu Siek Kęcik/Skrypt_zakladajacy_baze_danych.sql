/*
Created: 25.11.2020
Modified: 28.11.2020
Project: BDBT
Model: Logiczny
Database: Oracle 12c
*/


-- Create sequences section -------------------------------------------------

CREATE SEQUENCE pocztyseq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE adresseq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE stacjaseq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE audycjaseq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE wlascseq
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE pracseq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE stanseq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE wynagseq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE utworseq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE zespseq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE wykseq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE albumseq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

-- Create tables section -------------------------------------------------

-- Table Utwory

CREATE TABLE Utwory(
  id_utworu Integer NOT NULL,
  id_albumu Integer NOT NULL,
  Tytul Varchar2(30 ) NOT NULL,
  Ocena Number(3,1) NOT NULL,
  Czas_trwania_Utworu Date NOT NULL,
  Liczba_odtworzen Integer NOT NULL,
  Nr_w_albumie Integer,
  Data_dodania Date,
  Gatunek Varchar2(20 ) NOT NULL
        CHECK (Gatunek IN ('Rock','Metal','Hip-Hop','Pop','Blues','Jazz','Reggae','Muzyka_elektroniczna')),
  Wytwornia Varchar2(400 ) NOT NULL
)
/

-- Create indexes for table Utwory

CREATE INDEX IX_Naleza ON Utwory (id_albumu)
/

-- Add keys for table Utwory

ALTER TABLE Utwory ADD CONSTRAINT PK_Utwory PRIMARY KEY (id_utworu)
/

-- Table Listy_Przebojow

CREATE TABLE Listy_Przebojow(
  Id_audycji Integer NOT NULL,
  Nazwa_listy_przebojow Varchar2(30 ) NOT NULL,
  Czas_trwania_listy_przebojow Date NOT NULL,
  Typ_Listy Varchar2(15 ) NOT NULL
        CHECK (Typ_Listy IN ('DIAMOND','GOLD','2000s','OLD-80s','OLD-90s'))
)
/

-- Add keys for table Listy_Przebojow

ALTER TABLE Listy_Przebojow ADD CONSTRAINT PK_Listy_Przebojow PRIMARY KEY (Id_audycji)
/

-- Table Pracownicy

CREATE TABLE Pracownicy(
  id_pracownika Integer NOT NULL,
  id_stacji_radiowej Integer NOT NULL,
  id_stanowiska Integer NOT NULL,
  id_adresu Integer,
  Imie Varchar2(20 ) NOT NULL,
  Nazwisko Varchar2(30 ) NOT NULL,
  Plec Char(1 ) NOT NULL
        CHECK (Plec IN ('M','K')),
  PESEL Char(11 ),
  Nr_telefonu Varchar2(12 ),
  email Varchar2(30 ) NOT NULL
)
/

-- Create indexes for table Pracownicy

CREATE INDEX IX_Pracownik_w_biurze ON Pracownicy (id_stacji_radiowej)
/

CREATE INDEX IX_Ma_stanowisko ON Pracownicy (id_stanowiska)
/

CREATE INDEX IX_Pracownik_ma_adres ON Pracownicy (id_adresu)
/

-- Add keys for table Pracownicy

ALTER TABLE Pracownicy ADD CONSTRAINT PK_Pracownicy5 PRIMARY KEY (id_pracownika)
/

-- Table Reklamy

CREATE TABLE Reklamy(
  Id_audycji Integer NOT NULL,
  Nazwa_reklamy Varchar2(30 ) NOT NULL,
  Czas_trwania_reklamy Date NOT NULL,
  Reklamodowca Varchar2(400 ) NOT NULL
)
/

-- Add keys for table Reklamy

ALTER TABLE Reklamy ADD CONSTRAINT PK_Reklamy6 PRIMARY KEY (Id_audycji)
/

-- Table Stacje_Radiowe

CREATE TABLE Stacje_Radiowe(
  id_stacji_radiowej Integer NOT NULL,
  id_adresu Integer NOT NULL,
  Nazwa_Stacji_radiowej Varchar2(20 ) NOT NULL,
  Data_zalozenia Date NOT NULL
)
/

-- Create indexes for table Stacje_Radiowe

CREATE INDEX IX_Stacja_ma_adres ON Stacje_Radiowe (id_adresu)
/

-- Add keys for table Stacje_Radiowe

ALTER TABLE Stacje_Radiowe ADD CONSTRAINT Unique_Identifier1 PRIMARY KEY (id_stacji_radiowej)
/

-- Table Administratorzy_strony

CREATE TABLE Administratorzy_strony(
  id_pracownika Integer NOT NULL,
  Kwalifikacje Varchar2(60 ) NOT NULL,
  Permisje Varchar2(50 ) NOT NULL
)
/

-- Add keys for table Administratorzy_strony

ALTER TABLE Administratorzy_strony ADD CONSTRAINT Unique_Identifier2 PRIMARY KEY (id_pracownika)
/

-- Table DJe

CREATE TABLE DJe(
  id_pracownika Integer NOT NULL,
  Nr_licencji Varchar2(12 ) NOT NULL,
  Data_wydania_licencji Date NOT NULL
)
/

-- Add keys for table DJe

ALTER TABLE DJe ADD CONSTRAINT Unique_Identifier3 PRIMARY KEY (id_pracownika)
/

-- Table Audycje

CREATE TABLE Audycje(
  Id_audycji Integer NOT NULL,
  id_stacji_radiowej Integer NOT NULL,
  Nazwa_audycji Varchar2(30 ) NOT NULL,
  Data_emisji Date NOT NULL
)
/

-- Create indexes for table Audycje

CREATE INDEX IX_Emituje ON Audycje (id_stacji_radiowej)
/

-- Add keys for table Audycje

ALTER TABLE Audycje ADD CONSTRAINT Audycja_PK PRIMARY KEY (Id_audycji)
/

-- Table Utwory_Listy_Przebojow

CREATE TABLE Utwory_Listy_Przebojow(
  id_utworu Integer NOT NULL,
  Id_audycji Integer NOT NULL
)
/

-- Table Obsady_audycji

CREATE TABLE Obsady_audycji(
  id_pracownika Integer NOT NULL,
  Id_audycji Integer NOT NULL
)
/

-- Table Wykonawcy

CREATE TABLE Wykonawcy(
  id_wykonawcy Integer NOT NULL,
  Imie Varchar2(30 ) NOT NULL,
  Nazwisko Varchar2(30 ) NOT NULL
)
/

-- Add keys for table Wykonawcy

ALTER TABLE Wykonawcy ADD CONSTRAINT PK_Wykonawcy PRIMARY KEY (id_wykonawcy)
/

-- Table Stanowiska

CREATE TABLE Stanowiska(
  id_stanowiska Integer NOT NULL,
  Nazwa_stanowiska Varchar2(20 ) NOT NULL,
  Opis_stanowiska Varchar2(400 ) NOT NULL
)
/

-- Add keys for table Stanowiska

ALTER TABLE Stanowiska ADD CONSTRAINT PK_Stanowiska PRIMARY KEY (id_stanowiska)
/

ALTER TABLE Stanowiska ADD CONSTRAINT Nazwa_stanowiska UNIQUE (Nazwa_stanowiska)
/

-- Table Wynagrodzenie

CREATE TABLE Wynagrodzenie(
  id_wynagrodzenia Integer NOT NULL,
  id_pracownika Integer NOT NULL,
  Data Date NOT NULL,
  Kwota_pod Number(8,2) NOT NULL,
  Kwota_dod Number(8,2) NOT NULL
)
/

-- Create indexes for table Wynagrodzenie

CREATE INDEX IX_Otrzymuje ON Wynagrodzenie (id_pracownika)
/

-- Add keys for table Wynagrodzenie

ALTER TABLE Wynagrodzenie ADD CONSTRAINT PK_Wynagrodzenie PRIMARY KEY (id_wynagrodzenia)
/

-- Table Adresy

CREATE TABLE Adresy(
  id_adresu Integer NOT NULL,
  Miasto Varchar2(20 ) NOT NULL,
  Ulica Varchar2(30 ) NOT NULL,
  Nr_lokalu Varchar2(5 ) NOT NULL,
  Kod_pocztowy Varchar2(6 ) NOT NULL
)
/

-- Add keys for table Adresy

ALTER TABLE Adresy ADD CONSTRAINT PK_Adresy PRIMARY KEY (id_adresu)
/

-- Table Wlasciciel

CREATE TABLE Wlasciciel(
  id_wlasciciela Integer NOT NULL,
  id_stacji_radiowej Integer NOT NULL,
  Imie_wlasciciela Varchar2(20 ) NOT NULL,
  Nazwisko_wlasciciela Varchar2(30 ) NOT NULL
)
/

-- Create indexes for table Wlasciciel

CREATE INDEX IX_Posiada ON Wlasciciel (id_stacji_radiowej)
/

-- Add keys for table Wlasciciel

ALTER TABLE Wlasciciel ADD CONSTRAINT PK_Wlasciciel PRIMARY KEY (id_wlasciciela)
/

-- Table Wykonawcy_utworow

CREATE TABLE Wykonawcy_utworow(
  id_wykonawcy Integer NOT NULL,
  id_utworu Integer NOT NULL
)
/

-- Add keys for table Wykonawcy_utworow

ALTER TABLE Wykonawcy_utworow ADD CONSTRAINT PK_Wykonawcy_utworow PRIMARY KEY (id_wykonawcy,id_utworu)
/

-- Table Albumy

CREATE TABLE Albumy(
  id_albumu Integer NOT NULL,
  id_wykonawcy Integer,
  id_zespolu Integer,
  Nazwa_albumu Varchar2(30 ) NOT NULL,
  Rok_wydania Integer NOT NULL
)
/

-- Create indexes for table Albumy

CREATE INDEX Jest_nagrywany_przez_zespol ON Albumy (id_wykonawcy)
/

CREATE INDEX IX_Jest_wykonywany_przez_wykonawce ON Albumy (id_zespolu)
/

-- Add keys for table Albumy

ALTER TABLE Albumy ADD CONSTRAINT PK_Albumy PRIMARY KEY (id_albumu)
/

-- Table Zespoły

CREATE TABLE Zespoły(
  id_zespolu Integer NOT NULL,
  Nazwa Varchar2(30 ) NOT NULL,
  Rok_zalozenia Integer NOT NULL
)
/

-- Add keys for table Zespoły

ALTER TABLE Zespoły ADD CONSTRAINT PK_Zespoły PRIMARY KEY (id_zespolu)
/

ALTER TABLE Zespoły ADD CONSTRAINT Nazwa UNIQUE (Nazwa)
/

-- Table Sklady

CREATE TABLE Sklady(
  id_wykonawcy Integer NOT NULL,
  id_zespolu Integer NOT NULL
)
/

-- Add keys for table Sklady

ALTER TABLE Sklady ADD CONSTRAINT PK_Sklady PRIMARY KEY (id_wykonawcy,id_zespolu)
/

-- Trigger for sequence utworseq for column id_utworu in table Utwory ---------
CREATE OR REPLACE TRIGGER ts_Utwory_utworseq BEFORE INSERT
ON Utwory FOR EACH ROW
BEGIN
  :new.id_utworu := utworseq.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Utwory_utworseq AFTER UPDATE OF id_utworu
ON Utwory FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column id_utworu in table Utwory as it uses sequence.');
END;
/

-- Trigger for sequence pracseq for column id_pracownika in table Pracownicy ---------
CREATE OR REPLACE TRIGGER ts_Pracownicy_pracseq BEFORE INSERT
ON Pracownicy FOR EACH ROW
BEGIN
  :new.id_pracownika := pracseq.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Pracownicy_pracseq AFTER UPDATE OF id_pracownika
ON Pracownicy FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column id_pracownika in table Pracownicy as it uses sequence.');
END;
/

-- Trigger for sequence stacjaseq for column id_stacji_radiowej in table Stacje_Radiowe ---------
CREATE OR REPLACE TRIGGER ts_Stacje_Radiowe_stacjaseq BEFORE INSERT
ON Stacje_Radiowe FOR EACH ROW
BEGIN
  :new.id_stacji_radiowej := stacjaseq.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Stacje_Radiowe_stacjaseq AFTER UPDATE OF id_stacji_radiowej
ON Stacje_Radiowe FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column id_stacji_radiowej in table Stacje_Radiowe as it uses sequence.');
END;
/

-- Trigger for sequence audycjaseq for column Id_audycji in table Audycje ---------
CREATE OR REPLACE TRIGGER ts_Audycje_audycjaseq BEFORE INSERT
ON Audycje FOR EACH ROW
BEGIN
  :new.Id_audycji := audycjaseq.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Audycje_audycjaseq AFTER UPDATE OF Id_audycji
ON Audycje FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Id_audycji in table Audycje as it uses sequence.');
END;
/

-- Trigger for sequence wykseq for column id_wykonawcy in table Wykonawcy ---------
CREATE OR REPLACE TRIGGER ts_Wykonawcy_wykseq BEFORE INSERT
ON Wykonawcy FOR EACH ROW
BEGIN
  :new.id_wykonawcy := wykseq.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Wykonawcy_wykseq AFTER UPDATE OF id_wykonawcy
ON Wykonawcy FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column id_wykonawcy in table Wykonawcy as it uses sequence.');
END;
/

-- Trigger for sequence stanseq1 for column id_stanowiska in table Stanowiska ---------
CREATE OR REPLACE TRIGGER ts_Stanowiska_stanseq1 BEFORE INSERT
ON Stanowiska FOR EACH ROW
BEGIN
  :new.id_stanowiska := stanseq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Stanowiska_stanseq1 AFTER UPDATE OF id_stanowiska
ON Stanowiska FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column id_stanowiska in table Stanowiska as it uses sequence.');
END;
/

-- Trigger for sequence wynagseq for column id_wynagrodzenia in table Wynagrodzenie ---------
CREATE OR REPLACE TRIGGER ts_Wynagrodzenie_wynagseq BEFORE INSERT
ON Wynagrodzenie FOR EACH ROW
BEGIN
  :new.id_wynagrodzenia := wynagseq.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Wynagrodzenie_wynagseq AFTER UPDATE OF id_wynagrodzenia
ON Wynagrodzenie FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column id_wynagrodzenia in table Wynagrodzenie as it uses sequence.');
END;
/

-- Trigger for sequence adresseq for column id_adresu in table Adresy ---------
CREATE OR REPLACE TRIGGER ts_Adresy_adresseq BEFORE INSERT
ON Adresy FOR EACH ROW
BEGIN
  :new.id_adresu := adresseq.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Adresy_adresseq AFTER UPDATE OF id_adresu
ON Adresy FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column id_adresu in table Adresy as it uses sequence.');
END;
/

-- Trigger for sequence wlascseq for column id_wlasciciela in table Wlasciciel ---------
CREATE OR REPLACE TRIGGER ts_Wlasciciel_wlascseq BEFORE INSERT
ON Wlasciciel FOR EACH ROW
BEGIN
  :new.id_wlasciciela := wlascseq.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Wlasciciel_wlascseq AFTER UPDATE OF id_wlasciciela
ON Wlasciciel FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column id_wlasciciela in table Wlasciciel as it uses sequence.');
END;
/

-- Trigger for sequence albumseq for column id_albumu in table Albumy ---------
CREATE OR REPLACE TRIGGER ts_Albumy_albumseq BEFORE INSERT
ON Albumy FOR EACH ROW
BEGIN
  :new.id_albumu := albumseq.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Albumy_albumseq AFTER UPDATE OF id_albumu
ON Albumy FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column id_albumu in table Albumy as it uses sequence.');
END;
/

-- Trigger for sequence zespseq for column id_zespolu in table Zespoły ---------
CREATE OR REPLACE TRIGGER ts_Zespoły_zespseq BEFORE INSERT
ON Zespoły FOR EACH ROW
BEGIN
  :new.id_zespolu := zespseq.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Zespoły_zespseq AFTER UPDATE OF id_zespolu
ON Zespoły FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column id_zespolu in table Zespoły as it uses sequence.');
END;
/


-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE Pracownicy ADD CONSTRAINT Pracownik_w_biurze FOREIGN KEY (id_stacji_radiowej) REFERENCES Stacje_Radiowe (id_stacji_radiowej)
/



ALTER TABLE Audycje ADD CONSTRAINT Emituje FOREIGN KEY (id_stacji_radiowej) REFERENCES Stacje_Radiowe (id_stacji_radiowej)
/



ALTER TABLE Pracownicy ADD CONSTRAINT Pracownik_ma_stanowisko FOREIGN KEY (id_stanowiska) REFERENCES Stanowiska (id_stanowiska)
/



ALTER TABLE Wynagrodzenie ADD CONSTRAINT Otrzymuje_wynagrodzenie FOREIGN KEY (id_pracownika) REFERENCES Pracownicy (id_pracownika)
/



ALTER TABLE Stacje_Radiowe ADD CONSTRAINT Posiada_adres FOREIGN KEY (id_adresu) REFERENCES Adresy (id_adresu)
/



ALTER TABLE Pracownicy ADD CONSTRAINT Pracownik_ma_adres FOREIGN KEY (id_adresu) REFERENCES Adresy (id_adresu)
/



ALTER TABLE Wlasciciel ADD CONSTRAINT Ma_wlasciciela FOREIGN KEY (id_stacji_radiowej) REFERENCES Stacje_Radiowe (id_stacji_radiowej)
/



ALTER TABLE Wykonawcy_utworow ADD CONSTRAINT Autorzy_tworza_wspolnie FOREIGN KEY (id_wykonawcy) REFERENCES Wykonawcy (id_wykonawcy)
/



ALTER TABLE Wykonawcy_utworow ADD CONSTRAINT Wspolautorzy_maja_wspolne FOREIGN KEY (id_utworu) REFERENCES Utwory (id_utworu)
/



ALTER TABLE Utwory ADD CONSTRAINT ALbum_posiada_utwor FOREIGN KEY (id_albumu) REFERENCES Albumy (id_albumu)
/



ALTER TABLE Albumy ADD CONSTRAINT Wykonawca_ma_albumy FOREIGN KEY (id_wykonawcy) REFERENCES Wykonawcy (id_wykonawcy)
/



ALTER TABLE Sklady ADD CONSTRAINT Wykonawca_w_zespole FOREIGN KEY (id_wykonawcy) REFERENCES Wykonawcy (id_wykonawcy)
/



ALTER TABLE Sklady ADD CONSTRAINT Zespol_ma_wykonawce FOREIGN KEY (id_zespolu) REFERENCES Zespoły (id_zespolu)
/



ALTER TABLE Albumy ADD CONSTRAINT Zespol_ma_albumy FOREIGN KEY (id_zespolu) REFERENCES Zespoły (id_zespolu)
/