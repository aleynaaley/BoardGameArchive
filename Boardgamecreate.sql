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



















-------------------aleyna bunu denedim emin değilim 

SELECT 
    tblUye.AD_Üye, 
    tblUye.SOYAD_Üye, 
    tblUlke.ULKE_AD, 
    Sahip_Oldugu_Ana_Oyun_Sayisi,
    Kac_Oyuna_Puan_Vermis,
    Ortalama_Puan,
    Oyun_Seansi_Sayisi,
    Ticket_to_Ride_Oynama_Sayisi

FROM tblUye

LEFT JOIN tblUlke ON tblUye.ULKE_ID = tblUlke.ULKE_ID
LEFT JOIN ( SELECT UYE_ID, COUNT(KOLEKSIYON_ID) AS Sahip_Oldugu_Ana_Oyun_Sayisi
		    FROM tblKoleksiyon
            GROUP BY UYE_ID
		  ) AS KoleksiyonSayisi ON tblUye.UYE_ID = KoleksiyonSayisi.UYE_ID
LEFT JOIN ( SELECT  tblKoleksiyon.UYE_ID, COUNT(DISTINCT tblOyuna_puan_verir.ID) AS Kac_Oyuna_Puan_Vermis, AVG(tblOyuna_puan_verir.PUAN) AS Ortalama_Puan
            FROM tblKoleksiyon
			LEFT JOIN tblOyuna_puan_verir ON tblKoleksiyon.KOLEKSIYON_ID = tblOyuna_puan_verir.KOLEKSIYON
			GROUP BY tblKoleksiyon.UYE_ID
		  ) AS PuanVermeSayisi ON tblUye.UYE_ID = PuanVermeSayisi.UYE_ID
LEFT JOIN ( SELECT  tbluye_oyun_oynar.UYE_ID, COUNT(tbluye_oyun_oynar.OYNAR_ID) AS Oyun_Seansi_Sayisi
            FROM tbluye_oyun_oynar
			GROUP BY tbluye_oyun_oynar.UYE_ID
		  ) AS OyunSeansiSayisi ON tblUye.UYE_ID = OyunSeansiSayisi.UYE_ID
LEFT JOIN ( SELECT  tbluye_oyun_oynar.UYE_ID, COUNT(tbluye_oyun_oynar.OYNAR_ID) AS Ticket_to_Ride_Oynama_Sayisi
            FROM tbluye_oyun_oynar
			INNER JOIN tbloyun ON tbluye_oyun_oynar.OYUNSEANS_ID = tbloyun.OYUN_ID
			WHERE tbloyun.OYUN_ASILAD = 'Ticket to Ride'
			GROUP BY tbluye_oyun_oynar.UYE_ID
		  ) AS TicketToRideOynamaSayisi ON tblUye.UYE_ID = TicketToRideOynamaSayisi.UYE_ID;




--- deneme için veri ekledim 
-- tblUlke
INSERT INTO tblUlke (ULKE_AD) VALUES ('Türkiye');

-- tblIl
INSERT INTO tblIl (IL_AD, ULKE_ID) VALUES ('İstanbul', 1);

-- tblIlce
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Zeytinburnu', 1);

-- tblAdres
INSERT INTO tblAdres (ADRES_AD, ULKE_ID, IL_KODU, ILCE_ID) VALUES ('Zeytinburnu Adres', 1, 1, 1);

-- tbloyun
INSERT INTO tbloyun (OYUN_ASILAD) VALUES ('Ticket t');

-- tblUye
INSERT INTO tblUye (AD_Üye, SOYAD_Üye, ULKE_ID, IL_ID, ILCE_ID) VALUES ('Ahmet', 'Yılmaz', 1, 1, 1);

--TBLPARABİRİMİ
INSERT INTO tblParaBirimi (PARABIRIMI_AD) VALUES ('tl');

-- tblKoleksiyon
INSERT INTO tblKoleksiyon (KOLEKSIYON_AD,ODENEN_UCRET,PARABIRIMI_ID,UYE_ID,OYUN_ID) VALUES ('Ahmet Koleksiyonu','200',1,1,1);
--tblOyunseansı

INSERT INTO tblOyun_seanslar (aciklama,OLUSTURAN_UYE_ID,KAZANAN_UYE_ID,oyun_ID) VALUES('oyunseansı',1,1,1);
-- tbluye_oyun_oynar
INSERT INTO tbluye_oyun_oynar (UYE_ID, OYUNSEANS_ID) VALUES (1, 1);
