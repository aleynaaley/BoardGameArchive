create database databasename 
-- database oluşturur

use boardgame

-- boardgame adlı database üzerinde işlem yapacağımı belirttim bu komut ile







create table ROZET(
ID_Rozet INT PRIMARY KEY NOT NULL,
Ad_Rozet varchar(50)
)

create table YAYINTÜRÜ(
ID_Yayıntürü INT PRIMARY KEY NOT NULL,
Ad_Yayıntürü varchar(50))

create table YAYIN(
ID_Yayın INT PRIMARY KEY NOT NULL,
ID_Yayıntürü INT FOREIGN KEY REFERENCES YAYINRÜRÜ(ID_Yayıntürü) NOT NULL,
ID_Üye INT FOREGIN KEY REFERENCES ÜYE(ID_Üye) NOT NULL,
Tarih_Yayın varchar(10),
Başlık_Yayın varchar(50),
BeğenenSayısı_Yayın int,
MesajMetni_Yayın text,
)
--YAYIN İLE YAYINTÜRÜ ARASINDA 1-N İLİŞKİ VAR N YAYIN YANİ TÜRÜN ID Sİ ORAYA EKLENİR
--YAYIN İLE ÜYE ARASINDA N-1 İLİŞKİ VAR YANİ N YAYIN ÜYENİN ID Sİ ORAYA EKLENİR





  

create table ÜYE(
ID_Üye INT PRIMARY KEY NOT NULL,
AD_Üye VARCHAR(50),
SOYAD_Üye VARCHAR(50),
Cinsiyet VARCHAR(1),
DogumTarihi VARCHAR(10),
Yaş VARCHAR(3), --kesikli
E_mail VARCHAR(50),
Şifre VARCHAR(50),
Durum VARCHAR(50),
Kayıt_Tarihi VARCHAR(10),
Açıklama VARCHAR(100),
Kullanıcı_Türü VARCHAR(50),
Seviye INT,
Son_Giriş_Tarihi VARCHAR(10),
Takip_Eden_Kullanıcı_Sayısı INT,
Beğenen_Kullanıcı_Sayısı INT,
Beğenilen_Kullanıcı_Sayısı INT,
Profil_Bağlantısı VARCHAR(200),
Son_Profil_Güncelleme_Tarihi VARCHAR(10),
)


