CREATE DATABASE BOARD_GAME

USE BOARD_GAME 
CREATE TABLE tblDil
(
	dil_ID INT IDENTITY(1,1) PRIMARY KEY,
	dil_ad VARCHAR(30) NOT NULL
)
GO
CREATE TABLE tblYayinci_firma
(
	firma_ID INT IDENTITY(1,1) PRIMARY KEY,
	firma_ad VARCHAR(30) NOT NULL
)
GO 
CREATE TABLE tblOyun_seanslar
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	aciklama VARCHAR(30) NOT NULL,
	baslangic_tarihi DATE,
	bitis_tarihi DATE,
	üye_id INT FOREIGN KEY REFERENCES tblÜye(üye_ID) NOT NULL,   ----üye tablosu lazým
	oyun_ID INT FOREIGN KEY REFERENCES tblOyun(oyun_ID) NOT NULL,    ----oyun tablosu lazým
)
GO
CREATE TABLE tbl_Oyun_surum
(
	surum_id INT IDENTITY(1,1) PRIMARY KEY,
    yil INT,
    agirlik DECIMAL(5,2),
    oyun_surum_ad VARCHAR(255) NOT NULL,
	yayimci_firma_id INT,
    aciklama TEXT,
    boyut DECIMAL(10,2),
    urun_kodu VARCHAR(25),
	firma_ID INT FOREIGN KEY REFERENCES tblYayinci_firma(firma_ID) NOT NULL,
	tasarimci_ID INT FOREIGN KEY REFERENCES tblTasarimci(tasarimci_ID) NOT NULL, ----tasarýmcý tablosu lazým(N'e N)
	oyun_ID INT FOREIGN KEY REFERENCES tblOyun(tasarimci_ID) NOT NULL, ----oyun tablosu lazým
	dil_ID INT FOREIGN KEY REFERENCES tblDil(dil_ID)NOT NULL,
)
GO