create database databasename 
-- database olu�turur

use boardgame

-- boardgame adl� database �zerinde i�lem yapaca��m� belirttim bu komut ile







create table ROZET(
ID_Rozet INT PRIMARY KEY NOT NULL,
Ad_Rozet varchar(50)
)

create table YAYINT�R�(
ID_Yay�nt�r� INT PRIMARY KEY NOT NULL,
Ad_Yay�nt�r� varchar(50))

create table YAYIN(
ID_Yay�n INT PRIMARY KEY NOT NULL,
ID_Yay�nt�r� INT NOT NULL,
Tarih_Yay�n varchar(10),
Ba�l�k_Yay�n varchar(50),
Be�enenSay�s�_Yay�n int,
MesajMetni_Yay�n text,
)
--YAYIN �LE YAYINT�R� ARASINDA 1-N �L��K� VAR N YAYIN YAN� T�R�N ID S� ORAYA EKLEN�R






create table �YE(
ID_�ye INT PRIMARY KEY NOT NULL,
AD_�ye varchar(50),
SOYAD_�ye varchar(50),
Cinsiyet varchar(1),
Do�umTarihi varchar(10),
Ya� varchar(3), --kesikli
E_mail varchar(50),



)
