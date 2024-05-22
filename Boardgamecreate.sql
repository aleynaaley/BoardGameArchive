create database databasename 
-- database oluþturur

use boardgame

-- boardgame adlý database üzerinde iþlem yapacaðýmý belirttim bu komut ile







create table ROZET(
ID_Rozet INT PRIMARY KEY NOT NULL,
Ad_Rozet varchar(50)
)

create table YAYINTÜRÜ(
ID_Yayýntürü INT PRIMARY KEY NOT NULL,
Ad_Yayýntürü varchar(50))

create table YAYIN(
ID_Yayýn INT PRIMARY KEY NOT NULL,
ID_Yayýntürü INT NOT NULL,
Tarih_Yayýn varchar(10),
Baþlýk_Yayýn varchar(50),
BeðenenSayýsý_Yayýn int,
MesajMetni_Yayýn text,
)
--YAYIN ÝLE YAYINTÜRÜ ARASINDA 1-N ÝLÝÞKÝ VAR N YAYIN YANÝ TÜRÜN ID SÝ ORAYA EKLENÝR






create table ÜYE(
ID_Üye INT PRIMARY KEY NOT NULL,
AD_Üye varchar(50),
SOYAD_Üye varchar(50),
Cinsiyet varchar(1),
DoðumTarihi varchar(10),
Yaþ varchar(3), --kesikli
E_mail varchar(50),



)
