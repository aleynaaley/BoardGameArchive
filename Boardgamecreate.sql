create database databasename 
-- database oluşturur

use boardgame

-- boardgame adlı database üzerinde işlem yapacağımı belirttim bu komut ile







create table ROZET(
ID_Rozet INT PRIMARY KEY NOT NULL,
Ad_Rozet varchar(50)
)

create table YAYINTURU(
ID_Yayinturu INT PRIMARY KEY NOT NULL,
Ad_Yayinturu varchar(50))

create table YAYIN(
ID_Yayin INT PRIMARY KEY NOT NULL,
ID_Yayinturu INT FOREIGN KEY REFERENCES YAYINTURU(ID_Yayinturu) NOT NULL,
ID_Uye INT FOREGIN KEY REFERENCES UYE(ID_Uye) NOT NULL,
Tarih_Yayin varchar(10),
Baslik_Yayin varchar(50),
BegenenSayisi_Yayin int,
MesajMetni_Yayin text,
)
--YAYIN İLE YAYINTÜRÜ ARASINDA 1-N İLİŞKİ VAR N YAYIN YANİ TÜRÜN ID Sİ ORAYA EKLENİR
--YAYIN İLE ÜYE ARASINDA N-1 İLİŞKİ VAR YANİ N YAYIN ÜYENİN ID Sİ ORAYA EKLENİR





  

create table UYE(
ID_Uye INT PRIMARY KEY NOT NULL,
AD_Uye VARCHAR(50),
SOYAD_Uye VARCHAR(50),
Cinsiyet VARCHAR(1),
DogumTarihi VARCHAR(10),
Yas VARCHAR(3), --kesikli
E_mail VARCHAR(50),
Sifre VARCHAR(50),
Durum VARCHAR(50),
Kayit_Tarihi VARCHAR(10),
Aciklama VARCHAR(100),
Kullanici_Turu VARCHAR(50),
Seviye INT,
Son_Giris_Tarihi VARCHAR(10),
Takip_Eden_Kullanici_Sayisi INT,
Begenen_Kullanici_Sayisi INT,
Begenilen_Kullanici_Sayisi INT,
Profil_Baglantisi VARCHAR(200),
Son_Profil_Guncelleme_Tarihi VARCHAR(10),
)


