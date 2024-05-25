﻿-- database oluşturur
CREATE DATABASE boardgame

-- boardgame adlı database üzerinde işlem yapacağım
USE boardgame

-- BU TABLODA ÜLKE İSİMLERİ TUTULUR
CREATE TABLE tblUlke
(
	ULKE_ID INT IDENTITY(1,1) PRIMARY KEY,
	ULKE_AD VARCHAR(30) NOT NULL
)
GO

-- BU TABLODA HER BİR ÜLKEYE AİT İL İSİMLERİ TUTULUR
CREATE TABLE tblIl
(
	IL_ID INT IDENTITY(1,1)PRIMARY KEY,
	IL_AD VARCHAR(30) NOT NULL,
	ULKE_ID INT FOREIGN KEY REFERENCES tblUlke(ULKE_ID) NOT NULL
)
GO

-- BU TABLODA HER BİR İLE AİT İLÇELER TUTULUR
CREATE TABLE tblIlce
(
	ILCE_ID INT IDENTITY(1,1) PRIMARY KEY,
	ILCE_AD VARCHAR(30) NOT NULL,
	IL_KODU INT FOREIGN KEY REFERENCES tblIl(IL_ID) NOT NULL
)
GO

-- BU TABLODA ADRES BİLGİLERİ TUTULUR
CREATE TABLE tblAdres
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	ADRES_AD VARCHAR(30) NOT NULL,
	ULKE_ID INT FOREIGN KEY REFERENCES tblUlke(ULKE_ID) NOT NULL,
	IL_KODU INT FOREIGN KEY REFERENCES tblIl(IL_ID) NOT NULL,
	ILCE_ID INT FOREIGN KEY REFERENCES tblIlce(ILCE_ID) NOT NULL
)
GO

CREATE TABLE tblOyuncu_sayısı_oylaması
( 
	OY_ID INT IDENTITY(1,1) PRIMARY KEY,
	OY_ENIYI SMALLINT DEFAULT 0 NOT NULL, --EVET:1 , HAYIR:0
	OY_TAVSIYE_EDILIR SMALLINT DEFAULT 0 NOT NULL,
	OY_TAVSIYE_EDILMAZ SMALLINT DEFAULT 0 NOT NULL,
)
GO

---DİİİİKKKKAAAATT YANLIŞ BU TABLO
CREATE TABLE tblYas_oylamasi
( 
	OY_ID INT IDENTITY(1,1) PRIMARY KEY,
	YAS INT
)
GO

CREATE TABLE tblKarmasiklik_oylamasi
( 
	OY_ID INT IDENTITY(1,1) PRIMARY KEY,
	OY_KOLAY SMALLINT DEFAULT 0 NOT NULL, --EVET:1 , HAYIR:0
	OY_ORTA SMALLINT DEFAULT 0 NOT NULL, --EVET:1 , HAYIR:0
	OY_ZOR SMALLINT DEFAULT 0 NOT NULL, --EVET:1 , HAYIR:0
)
GO

CREATE TABLE tblDil_bagimliligi_oylamasi
( 
	OY_ID INT IDENTITY(1,1) PRIMARY KEY,
	OY_BAZI_METINLER_ICIN_GEREKLI SMALLINT DEFAULT 0 NOT NULL, --EVET:1 , HAYIR:0
        OY_ORTA_DERECE_GEREKLI SMALLINT DEFAULT 0 NOT NULL, --EVET:1 , HAYIR:0
	OY_COK_FAZLA_METIN_ICIN_GEREKLI SMALLINT DEFAULT 0 NOT NULL, --EVET:1 , HAYIR:0
	OY_GEREKLI_DEGIL SMALLINT DEFAULT 0 NOT NULL, --EVET:1 , HAYIR:0
)
GO

CREATE TABLE tblUye(
	UYE_ID INT IDENTITY(1,1) PRIMARY KEY,
	AD_Üye VARCHAR(50),
	SOYAD_Üye VARCHAR(50),
	Cinsiyet VARCHAR(1),
	DOGUMTARIHI DATE,
	YAS AS DATEDIFF(yy,DOGUMTARIHI,GETDATE()),
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
	ULKE_ID INT FOREIGN KEY REFERENCES tblUlke(ULKE_ID) NOT NULL,
	IL_ID INT FOREIGN KEY REFERENCES tblIl(IL_ID) NOT NULL,
	ILCE_ID INT FOREIGN KEY REFERENCES tblIlce(ILCE_ID) NOT NULL,
	OYUNCU_SAYISI_OYLAMASI_ID INT FOREIGN KEY REFERENCES tblOyuncu_sayısı_oylaması(OY_ID),  --1'e N
	YAS_OYLAMASI_ID INT FOREIGN KEY REFERENCES tblYas_oylamasi(OY_ID),    --1'e N
	KARMASIKLIK_OYLAMASI_ID INT FOREIGN KEY REFERENCES tblKarmasiklik_oylamasi(OY_ID),
	DIL_BAGIMLILIGI_ID INT FOREIGN KEY REFERENCES tblDil_bagimliligi_oylamasi(OY_ID),
)
GO


create table tblRozet(
	ROZET_ID INT IDENTITY(1,1) PRIMARY KEY,
	ROZET_AD varchar(50)
)
GO

create table tblYayinTuru(
	ID_Yayıntürü INT IDENTITY(1,1) PRIMARY KEY,
	Ad_Yayıntürü varchar(50)
)
GO

create table tblYayin(
	YAYIN_ID INT IDENTITY(1,1) PRIMARY KEY,
	YAYINTURU_ID INT FOREIGN KEY REFERENCES tblYayinturu(ID_Yayıntürü) NOT NULL,
	UYE_ID INT FOREIGN KEY REFERENCES tblUye(UYE_ID) NOT NULL,
	YAYIN_TARIHI varchar(10),
	YAYIN_BASLIK varchar(50),
	BeğenenSayısı_Yayın int,
	MesajMetni_Yayın varchar(50),
)
--YAYIN İLE YAYINTÜRÜ ARASINDA 1-N İLİŞKİ VAR N YAYIN YANİ TÜRÜN ID Sİ ORAYA EKLENİR
--YAYIN İLE ÜYE ARASINDA N-1 İLİŞKİ VAR YANİ N YAYIN ÜYENİN ID Sİ ORAYA EKLENİR






-- BU TABLODA LOKASYON BİLGİLERİ TUTULUR
CREATE TABLE tblLokasyon
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	LOKAYSON_AD VARCHAR(30) NOT NULL,
	IRTIBAT_TELEFONU VARCHAR(10) UNIQUE,
	AKTIFLIK_DURUMU VARCHAR(20),
	ADRES_ID INT FOREIGN KEY REFERENCES tblAdres(ID) NOT NULL,
	UYE_ID INT FOREIGN KEY REFERENCES tblUye(UYE_ID) NOT NULL
)
GO

-- PARA BİRİMİ
CREATE TABLE tblParaBirimi
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	PARABIRIMI_AD VARCHAR(30) NOT NULL
)
GO

-- KOLEKSİYON
CREATE TABLE tblKoleksiyon
(
	KOLEKSIYON_ID INT IDENTITY(1,1) PRIMARY KEY,
	KOLEKSIYON_AD VARCHAR(30) NOT NULL,
	ODENEN_UCRET VARCHAR(10),
	PARABIRIMI_ID INT FOREIGN KEY REFERENCES tblParaBirimi(ID) NOT NULL,
	UYE_ID INT FOREIGN KEY REFERENCES tblUye(UYE_ID) NOT NULL  
)
GO

CREATE TABLE tblKoleksiyonEklemeTuru
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	KOLEKSIYON_EKLEME_TURU_AD VARCHAR(30) NOT NULL
)
GO



CREATE TABLE tblDil
(
	DIL_ID INT IDENTITY(1,1) PRIMARY KEY,
	DIL_AD VARCHAR(30) NOT NULL
)
GO
CREATE TABLE tblYayinci_firma
(
	FIRMA_ID INT IDENTITY(1,1) PRIMARY KEY,
	firma_ad VARCHAR(30) NOT NULL
)
GO 

-- BU TABLO OYUN
CREATE TABLE tbloyun
(
	  OYUN_ID INT IDENTITY(1,1) PRIMARY KEY,
	  OYUN_ASILAD VARCHAR(30) NOT NULL,
	  KOLEKSIYON_ID INT FOREIGN KEY REFERENCES tblKoleksiyon(KOLEKSIYON_ID) NOT NULL, 
	  KOLEKSIYON_ODENEN_UCRET INT,
	  KOLEKSIYON_SATIN_ALMA_TARIHI DATE,
	  KOLEKSIYON_SATIN_ALINDI_YER VARCHAR(50),
	  KOLEKSIYON_ENVANTERE_GIRIS_TARIHI DATE,
	  KOLEKSIYON_ENVANTER_LOKASYON VARCHAR(100), ---LOKASYON TABLOSU İLE İLİŞKİSİ???
	  KOLEKSIYON_OZEL_YORUM VARCHAR(100)


) 
GO

CREATE TABLE tblOyun_seanslar
(
	OYUNSEANS_ID INT IDENTITY(1,1) PRIMARY KEY,
	aciklama VARCHAR(30) NOT NULL,
	baslangic_tarihi DATE,
	bitis_tarihi DATE,
	OLUSTURAN_UYE_ID INT FOREIGN KEY REFERENCES tblUye(UYE_ID) NOT NULL, 
	KAZANAN_UYE_ID INT FOREIGN KEY REFERENCES tblUye(UYE_ID) NOT NULL, 
	oyun_ID INT FOREIGN KEY REFERENCES tblOyun(OYUN_ID) NOT NULL,    
)
GO

--TASARIMCI TABLOSU
CREATE TABLE tblTasarimci
( 
	TASARIMCI_ID INT IDENTITY(1,1) PRIMARY KEY,
	TASARIMCI_AD VARCHAR(100) NOT NULL,
	TASARIMCI_SOYAD VARCHAR(100) NOT NULL
)
GO

--GOREV ALANI TABLOSU
CREATE TABLE tblgorevalani
( 
         GOREVALANI_ID INT IDENTITY(1,1) PRIMARY KEY,
         GOREVALANI_AD VARCHAR(100) NOT NULL
)
GO

CREATE TABLE tbl_Oyun_surum
(
	surum_id INT IDENTITY(1,1) PRIMARY KEY,
        yil INT,
        agirlik DECIMAL(5,2),
        oyun_surum_ad VARCHAR(255) NOT NULL,
	yayimci_firma_id INT,
        aciklama VARCHAR(100),
        boyut DECIMAL(10,2),
        urun_kodu VARCHAR(25),
	firma_ID INT FOREIGN KEY REFERENCES tblYayinci_firma(FIRMA_ID) NOT NULL,
	TASARIMCI_ID INT FOREIGN KEY REFERENCES tblTasarimci(TASARIMCI_ID) NOT NULL, ----tasarımcı tablosu lazım (N'e N)
	OYUN_ID INT FOREIGN KEY REFERENCES tblOyun(OYUN_ID) NOT NULL, ----oyun tablosu lazım
	DIL_ID INT FOREIGN KEY REFERENCES tblDil(DIL_ID)NOT NULL,
)
GO



-- MEKANIK TABLOSU
CREATE TABLE tblmekanikler
(
	 MEKANIK_ID INT IDENTITY(1,1) PRIMARY KEY,
	 MAKANIK_AD VARCHAR(100) NOT NULL
)
GO

--KATEGORI TABLOSU
CREATE TABLE tblkategori
(
	KATEGORI_ID INT IDENTITY(1,1) PRIMARY KEY,
	KATEGORI_AD VARCHAR(100) NOT NULL
)
GO

--TUR TABLOSU
CREATE TABLE tbltur
( 
	TUR_ID INT IDENTITY(1,1) PRIMARY KEY,
	TUR_AD VARCHAR(100) NOT NULL
)
GO





-------------- ILISKI TABLOLARI -------------------



---UYE TAKIP EDER İLİŞKİ TABLOSU
CREATE TABLE tblTakip_eder(
	 ID INT IDENTITY(1,1) PRIMARY KEY,
	 TAKIP_EDEN_UYE_ID INT FOREIGN KEY REFERENCES tbluye(UYE_ID) NOT NULL,
	 TAKIP_EDILEN_UYE_ID INT FOREIGN KEY REFERENCES tbluye(UYE_ID) NOT NULL,
	 TAKIP_ETME_TARIH DATE DEFAULT GETDATE(),
)
GO
	
---UYE BEĞENİR İLİŞKİ TABLOSU
CREATE TABLE tblBegenir(
	 ID INT IDENTITY(1,1) PRIMARY KEY,
	 BEGENEN_UYE_ID INT FOREIGN KEY REFERENCES tbluye(UYE_ID) NOT NULL,
	 BEGENILEN_UYE_ID INT FOREIGN KEY REFERENCES tbluye(UYE_ID) NOT NULL,
	 BEGENME_TARIH DATE DEFAULT GETDATE(),
)
GO
	
-- YORUM YAPAR
CREATE TABLE tblYorum_yapar(
	 ID INT IDENTITY(1,1) PRIMARY KEY,
	 YORUM_YAPILAN_YAYIN_ID INT FOREIGN KEY REFERENCES tblYayin(YAYIN_ID) NOT NULL,
	 YORUM_YAPAN_YAYIN_ID INT FOREIGN KEY REFERENCES tblYayin(YAYIN_ID) NOT NULL,
)
GO
	
-- PUAN VERIR
CREATE TABLE tblOyuna_puan_verir(
	 ID INT IDENTITY(1,1) PRIMARY KEY,
	 KOLEKSIYON INT FOREIGN KEY REFERENCES tblKoleksiyon(KOLEKSIYON_ID) NOT NULL,
	 OYUN INT FOREIGN KEY REFERENCES tblOyun(OYUN_ID) NOT NULL,
	 PUAN INT,	 
)
GO
	
--YORUM YAPAR
CREATE TABLE tblOyuna_yorum_yapar(
	 ID INT IDENTITY(1,1) PRIMARY KEY,
	 KOLEKSIYON INT FOREIGN KEY REFERENCES tblKoleksiyon(KOLEKSIYON_ID) NOT NULL,
	 OYUN INT FOREIGN KEY REFERENCES tblOyun(OYUN_ID) NOT NULL,
	 YORUM VARCHAR(50)
)
GO
	
---ROZET VE UYE
CREATE TABLE tblUye_sahiptir_rozet(
	  ID INT IDENTITY(1,1) PRIMARY KEY,
	  UYE_ID INT FOREIGN KEY REFERENCES tblUye(UYE_ID) NOT NULL,
	  ROZET_ID INT FOREIGN KEY REFERENCES tblRozet(ROZET_ID) NOT NULL,
)
GO
	
--UYE VE OYUN SEANSLARI İLİŞKİ TABLOSU
CREATE TABLE tbluye_oyun_oynar(
	 OYNAR_ID INT IDENTITY(1,1) PRIMARY KEY,
	 UYE_ID INT FOREIGN KEY REFERENCES tbluye(UYE_ID) NOT NULL,
	 OYUNSEANS_ID INT FOREIGN KEY REFERENCES tblOyun_seanslar(OYUNSEANS_ID) NOT NULL
)
GO
	
-- OYUN VE MEKANIKLER ILISKISI TABLOSU
CREATE TABLE tbloyun_mekanikler(
	 OYUNMEKANIK_ID INT IDENTITY(1,1) PRIMARY KEY,
	 OYUN_ID INT FOREIGN KEY REFERENCES tbloyun(OYUN_ID) NOT NULL,
	 MEKANIK_ID INT FOREIGN KEY REFERENCES tblmekanikler(MEKANIK_ID) NOT NULL
)
GO

-- OYUN VE KATEGORI TABLOSU
CREATE TABLE tbloyun_kategori(
	 OYUNKATEGORI_ID INT IDENTITY(1,1) PRIMARY KEY,
	 OYUN_ID INT FOREIGN KEY REFERENCES tbloyun(OYUN_ID) NOT NULL,
	 KATEGORI_ID INT FOREIGN KEY REFERENCES tblkategori(KATEGORI_ID) NOT NULL
)
GO

-- OYUN VE TUR TABLOSU
CREATE TABLE tbloyun_tur(
	 OYUNTUR_ID INT IDENTITY(1,1) PRIMARY KEY,
	 OYUN_ID INT FOREIGN KEY REFERENCES tbloyun(OYUN_ID) NOT NULL,
	 TUR_ID INT FOREIGN KEY REFERENCES tbltur(TUR_ID) NOT NULL
)
GO

-- OYUN VE TASARIMCI TABLOSU
CREATE TABLE tbloyuntasarimci(
	 OYUNTASARIMCI_ID INT IDENTITY(1,1) PRIMARY KEY,
	 OYUN_ID INT FOREIGN KEY REFERENCES tbloyun(OYUN_ID) NOT NULL,
	 TASARIMCI_ID INT FOREIGN KEY REFERENCES tbltasarimci(TASARIMCI_ID) NOT NULL
)
GO

-- TASARIMCI VE GOREV ALANI TABLOSU
CREATE TABLE tbltasarim_gorevalani(
	 TASARIMGOREVALANI_ID INT IDENTITY(1,1) PRIMARY KEY,
	 TASARIMCI_ID INT FOREIGN KEY REFERENCES tbltasarimci(TASARIMCI_ID) NOT NULL,
	 GOREVALANI_ID INT FOREIGN KEY REFERENCES tblgorevalani(GOREVALANI_ID) NOT NULL
)
GO

-- KOLEKSİYON VE KOLEKSİYOK EKLEME TÜRÜ TABLOSU
CREATE TABLE tblKoleksiyon_koleyksiyon_ekleme_turu
(		
	ID INT IDENTITY(1,1) PRIMARY KEY,
	KOLEKSIYON_ID INT FOREIGN KEY REFERENCES tblKoleksiyon(KOLEKSIYON_ID) NOT NULL,
	KOLEKSIYON_EKLEME_TURU_ID INT FOREIGN KEY REFERENCES tblKoleksiyonEklemeTuru(ID) NOT NULL,
)
GO

--OYUN YERİNE GEÇME
CREATE TABLE tblYenioyun_oyunun_yerine_geçer
(		
	ID INT IDENTITY(1,1) PRIMARY KEY,
	YENI_OYUN INT FOREIGN KEY REFERENCES tblOyun(OYUN_ID) NOT NULL,
	OYUN INT FOREIGN KEY REFERENCES tblOyun(OYUN_ID) NOT NULL,
	
)
GO



