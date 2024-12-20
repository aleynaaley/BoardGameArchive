use boardgame

-- tbloyun tablosuna veri ekleme
INSERT INTO tbloyun 
(OYUN_ASILAD, KOLEKSIYON_ODENEN_UCRET, KOLEKSIYON_SATIN_ALMA_TARIHI, KOLEKSIYON_SATIN_ALINDI_YER, 
 KOLEKSIYON_ENVANTERE_GIRIS_TARIHI, KOLEKSIYON_ENVANTER_LOKASYON, KOLEKSIYON_OZEL_YORUM, ACIKLAMA, 
 YORUM_YAPAN_KULLANICI_SAYISI, EN_COK_OYUN_SURE, EN_AZ_OYUN_SURE, OY_VEREN_KULLANICI_SAYISI, YAYINLANDIGI_YIL)
VALUES
-- 1. Oyun
('CATAN', 150, '2023-12-01', 'Steam', 
 '2023-12-03', 'Dijital', 'RPG türünde mükemmel bir oyun.', 'Grafikler harika, hikaye sürükleyici.', 
 5000, 120, 10, 4800, '2015-05-19'),

-- 2. Oyun
('RUH ADASI', 200, '2024-01-15', 'Epic Games', 
 '2024-01-17', 'Dijital', 'Görseller çok iyi, ancak hatalar giderilmeli.', 'İlk çıktığında sorunluydu, ama güncellemelerle iyileşti.', 
 3200, 90, 5, 3000, '2020-12-10'),

-- 3. Oyun
('Minecraft', 50, '2022-08-10', 'Microsoft Store', 
 '2022-08-12', 'Dijital', 'Kreatif oyun severler için ideal.', 'Blok tabanlı yapısıyla her yaştan oyuncuya hitap ediyor.', 
 10000, 180, 15, 9500, '2011-11-18'),

-- 4. Oyun
('Dune: İmparatorluk', 300, '2024-02-01', 'Steam', 
 '2024-02-02', 'Dijital', 'Dark Souls hayranları için vazgeçilmez.', 'Zorluk seviyesi yüksek ama ödüllendirici.', 
 4500, 150, 20, 4300, '2022-02-25'),

-- 5. Oyun
('Wondrous Creatures', 120, '2023-03-25', 'Rockstar Launcher', 
 '2023-03-27', 'Dijital', 'Açık dünya oyunlarının zirvesi.', 'Çok geniş bir harita ve eğlenceli görevler.', 
 8500, 200, 30, 8300, '2013-09-17'),

 -- 6. Oyun
 ('Ark Nova', 50, '2023-01-10', 'Steam', '2023-01-12', 'Dijital', 'Metroidvania türünde çok başarılı.', 
 'Bağımsız oyunlardan biri.', 4500, 60, 5, 4400, '2017-02-24'),

 -- 7. Oyun
('Cyberpunk 2077', 200, '2023-06-15', 'GOG', '2023-06-17', 'Dijital', 'Grafik olarak oldukça iddialı.', 
 'İçerik sorunları giderilirse çok başarılı.', 7200, 150, 20, 7000, '2020-12-10');




 -- tblUlke tablosuna veri ekleme
 INSERT INTO tblUlke (ULKE_AD) VALUES
('Türkiye'),
('Amerika Birleşik Devletleri');



--
INSERT INTO tblIl (IL_AD, ULKE_ID) VALUES
('Adana', 1),
('Adıyaman', 1),
('Afyonkarahisar', 1),
('Ağrı', 1),
('Amasya', 1),
('Ankara', 1),
('Antalya', 1),
('Artvin', 1),
('Aydın', 1),
('Balıkesir', 1),
('Bilecik', 1),
('Bingöl', 1),
('Bitlis', 1),
('Bolu', 1),
('Burdur', 1),
('Bursa', 1),
('Çanakkale', 1),
('Çankırı', 1),
('Çorum', 1),
('Denizli', 1),
('Diyarbakır', 1),
('Edirne', 1),
('Elazığ', 1),
('Erzincan', 1),
('Erzurum', 1),
('Eskişehir', 1),
('Gaziantep', 1),
('Giresun', 1),
('Gümüşhane', 1),
('Hakkari', 1),
('Hatay', 1),
('Isparta', 1),
('Mersin', 1),
('İstanbul', 1),
('İzmir', 1),
('Kars', 1),
('Kastamonu', 1),
('Kayseri', 1),
('Kırklareli', 1),
('Kırşehir', 1),
('Kocaeli', 1),
('Konya', 1),
('Kütahya', 1),
('Malatya', 1),
('Manisa', 1),
('Kahramanmaraş', 1),
('Mardin', 1),
('Muğla', 1),
('Muş', 1),
('Nevşehir', 1),
('Niğde', 1),
('Ordu', 1),
('Rize', 1),
('Sakarya', 1),
('Samsun', 1),
('Siirt', 1),
('Sinop', 1),
('Sivas', 1),
('Tekirdağ', 1),
('Tokat', 1),
('Trabzon', 1),
('Tunceli', 1),
('Şanlıurfa', 1),
('Uşak', 1),
('Van', 1),
('Yozgat', 1),
('Zonguldak', 1),
('Aksaray', 1),
('Bayburt', 1),
('Karaman', 1),
('Kırıkkale', 1),
('Batman', 1),
('Şırnak', 1),
('Bartın', 1),
('Ardahan', 1),
('Iğdır', 1),
('Yalova', 1),
('Karabük', 1),
('Kilis', 1),
('Osmaniye', 1),
('Düzce', 1);



INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Merkez', 1);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Kadıköy', 34);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Çankaya', 6);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Konak', 35);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Osmangazi', 16);



-- tblOyuncu_sayısı_oylaması tablosuna veri ekleme
INSERT INTO tblOyuncu_sayısı_oylaması (OY_ENIYI, OY_TAVSIYE_EDILIR, OY_TAVSIYE_EDILMAZ, OYUN_ID) VALUES
(1, 1, 0, 1),
(0, 1, 0, 2),
(1, 0, 1, 3),
(1, 1, 0, 4),
(0, 0, 1, 5);

-- tblYas_oylamasi tablosuna veri ekleme
INSERT INTO tblYas_oylamasi (YAS, OYUN_ID) VALUES
(18, 1),
(25, 2),
(30, 3),
(40, 4),
(50, 5);

-- tblKarmasiklik_oylamasi tablosuna veri ekleme
INSERT INTO tblKarmasiklik_oylamasi (OY_KOLAY, OY_ORTA, OY_ZOR, OYUN_ID) VALUES
(1, 0, 0, 1),
(0, 1, 0, 2),
(0, 0, 1, 3),
(1, 1, 0, 4),
(0, 1, 1, 5);

-- tblDil_bagimliligi_oylamasi tablosuna veri ekleme
INSERT INTO tblDil_bagimliligi_oylamasi (OY_BAZI_METINLER_ICIN_GEREKLI, OY_ORTA_DERECE_GEREKLI, OY_COK_FAZLA_METIN_ICIN_GEREKLI, OY_GEREKLI_DEGIL, OYUN_ID) VALUES
(1, 0, 0, 0, 1),
(0, 1, 0, 0, 2),
(1, 1, 0, 0, 3),
(0, 0, 1, 0, 4),
(0, 0, 0, 1, 5);



 INSERT INTO tblUye         //değişecekkk kullanıc türü 
(AD_Üye, SOYAD_Üye, Cinsiyet, DOGUMTARIHI, E_mail, Şifre, Durum, Kayıt_Tarihi, Açıklama, Kullanıcı_Türü, 
 Seviye, Son_Giriş_Tarihi, Takip_Eden_Kullanıcı_Sayısı, Beğenen_Kullanıcı_Sayısı, Beğenilen_Kullanıcı_Sayısı, 
 Profil_Bağlantısı, Son_Profil_Güncelleme_Tarihi, ULKE_ID, IL_ID, ILCE_ID, OYUNCU_SAYISI_OYLAMASI_ID, 
 YAS_OYLAMASI_ID, KARMASIKLIK_OYLAMASI_ID, DIL_BAGIMLILIGI_ID)

VALUES
 ('Aleyna', 'Erkul', 'K', '2003-01-23', 'aleyna.erkul@example.com', 'dahadagucluuuuuSifre!', 'Aktif', '2023-12-15', 
 'Strateji oyunlarına ilgi duyar.', 'Casual', 8, '2024-12-08', 500, 120, 100, 
 'https://profile.example.com/aleyaley', '2024-01-06', 1, 34, 2, 4, 3, 5, 2),


  ('Tuğba', 'Aslan', 'K', '2002-07-02', 'tuğba.aslann@example.com', 'dahadahadahagucluSifre!', 'Aktif', '2023-12-15', 
 'aksiyon oyunlarına ilgi duyar.', 'Casual', 9, '2024-12-08', 600, 120, 120, 
 'https://profile.example.com/tuba', '2024-08-06', 1, 34, 2, 2, 5, 5, 2),

('Ahmet', 'Yılmaz', 'E', '1995-03-15', 'ahmet.yilmaz@example.com', 'sifre123', 'Aktif', '2024-01-01', 
 'Sık oyun oynar.', 'Gamer', 10, '2024-01-10', 250, 200, 180, 
 'https://profile.example.com/ahmetyilmaz', '2024-01-05', 1, 34, 2, 3, 2, 4, 1),

 ('Elif', 'Demir', 'K', '1988-07-20', 'elif.demir@example.com', 'gucluSifre!', 'Aktif', '2023-12-15', 
 'Strateji oyunlarına ilgi duyar.', 'Casual', 8, '2024-01-08', 150, 120, 100, 
 'https://profile.example.com/elifdemir', '2024-01-06', 1, 34, 2, 2, 3, 5, 2),

 ('Mehmet', 'Çelik', 'E', '2002-11-10', 'mehmet.celik@example.com', '12345Abc', 'Pasif', '2023-11-20', 
 'Yeni oyunları dener.', 'Tester', 5, '2024-01-03', 50, 40, 35, 
 'https://profile.example.com/mehmetcelik', '2024-01-02', 1, 35, 4, 1, 1, 2, 3),


 ('Ayşe', 'Kaya', 'K', '1990-02-14', 'ayse.kaya@example.com', '!SuperPass22', 'Aktif', '2023-12-10', 
 'Aile oyunlarını sever.', 'Family', 6, '2024-01-09', 120, 110, 95, 
 'https://profile.example.com/aysekaya', '2024-01-07', 1, 36, 1, 4, 5, 3, 4),

 ('Fatih', 'Ak', 'E', '1985-06-30', 'fatih.ak@example.com', 'Passw0rd*', 'Pasif', '2023-12-05', 
 'Yarış oyunlarına meraklı.', 'Competitive', 9, '2024-01-04', 180, 160, 140, 
 'https://profile.example.com/fatihak', '2024-01-06', 1, 16, 5, 5, 4, 4, 1);






-- tblOyun_seanslar tablosuna veri ekleme (güncellenmiş)
INSERT INTO tblOyun_seanslar (aciklama, baslangic_tarihi, bitis_tarihi, OLUSTURAN_UYE_ID, KAZANAN_UYE_ID, oyun_ID) VALUES    // değişecek 
('Oyun 5 Seansı', '2024-12-04 03:00:00', '2024-12-04 03:20:00', 14, 3, 4),
('Oyun 1 Seansı', '2024-12-01 10:00:00', '2024-12-01 10:40:00', 3, 10, 1),
('Oyun 2 Seansı', '2024-12-01 12:00:00', '2024-12-01 12:40:00', 10, 11, 2),
('Oyun 3 Seansı', '2024-12-01 14:00:00', '2024-12-01 14:50:00', 11, 13, 3),
('Oyun 4 Seansı', '2024-12-01 16:00:00', '2024-12-01 16:40:00', 12, 14, 4),
('Oyun 5 Seansı', '2024-12-01 18:00:00', '2024-12-01 18:30:00', 13, 14, 5),
('Oyun 1 Seansı', '2024-12-01 20:00:00', '2024-12-01 20:40:00', 14, 15, 1),
('Oyun 2 Seansı', '2024-12-01 22:00:00', '2024-12-01 22:50:00', 15, 13, 2),
('Oyun 3 Seansı', '2024-12-02 01:00:00', '2024-12-02 01:30:00', 10, 14, 3),
('Oyun 4 Seansı', '2024-12-02 03:00:00', '2024-12-02 03:40:00', 11, 3, 4),
('Oyun 5 Seansı', '2024-12-02 05:00:00', '2024-12-02 05:50:00', 12, 10, 5),
('Oyun 1 Seansı', '2024-12-02 07:00:00', '2024-12-02 07:40:00', 13, 15, 1),
('Oyun 2 Seansı', '2024-12-02 09:00:00', '2024-12-02 09:30:00', 14, 3, 2),
('Oyun 3 Seansı', '2024-12-02 11:00:00', '2024-12-02 11:40:00', 15, 11, 3),
('Oyun 4 Seansı', '2024-12-02 13:00:00', '2024-12-02 13:50:00', 3, 14, 4),
('Oyun 5 Seansı', '2024-12-02 15:00:00', '2024-12-02 15:40:00', 10, 15, 5),
('Oyun 1 Seansı', '2024-12-02 17:00:00', '2024-12-02 17:40:00', 11, 3, 1),
('Oyun 2 Seansı', '2024-12-02 19:00:00', '2024-12-02 19:30:00', 12, 10, 2),
('Oyun 3 Seansı', '2024-12-02 21:00:00', '2024-12-02 21:50:00', 13, 15, 3),
('Oyun 4 Seansı', '2024-12-02 23:00:00', '2024-12-02 23:40:00', 14, 11, 4),
('Oyun 5 Seansı', '2024-12-03 01:00:00', '2024-12-03 01:30:00', 15, 14, 5),
('Oyun 1 Seansı', '2024-12-03 03:00:00', '2024-12-03 03:40:00', 3, 10, 1),
('Oyun 2 Seansı', '2024-12-03 05:00:00', '2024-12-03 05:50:00', 10, 11, 2),
('Oyun 3 Seansı', '2024-12-03 07:00:00', '2024-12-03 07:40:00', 11, 13, 3),
('Oyun 4 Seansı', '2024-12-03 09:00:00', '2024-12-03 09:30:00', 12, 15, 4),
('Oyun 5 Seansı', '2024-12-03 11:00:00', '2024-12-03 11:40:00', 13, 3, 5),
('Oyun 1 Seansı', '2024-12-03 13:00:00', '2024-12-03 13:40:00', 14, 10, 1),
('Oyun 2 Seansı', '2024-12-03 15:00:00', '2024-12-03 15:50:00', 15, 13, 2),
('Oyun 3 Seansı', '2024-12-03 17:00:00', '2024-12-03 17:40:00', 3, 14, 3),
('Oyun 4 Seansı', '2024-12-03 19:00:00', '2024-12-03 19:30:00', 10, 15, 4),
('Oyun 5 Seansı', '2024-12-03 21:00:00', '2024-12-03 21:50:00', 11, 13, 5),
('Oyun 1 Seansı', '2024-12-03 23:00:00', '2024-12-03 23:40:00', 12, 14, 1),
('Oyun 2 Seansı', '2024-12-04 01:00:00', '2024-12-04 01:40:00', 13, 3, 2),
('Oyun 3 Seansı', '2024-12-04 03:00:00', '2024-12-04 03:30:00', 14, 10, 3),
('Oyun 4 Seansı', '2024-12-04 05:00:00', '2024-12-04 05:50:00', 15, 11, 4),
('Oyun 5 Seansı', '2024-12-04 07:00:00', '2024-12-04 07:40:00', 3, 14, 5);




INSERT INTO tbluye_oyun_oynar (UYE_ID, OYUNSEANS_ID) VALUES  //değişiecek 
(3, 2),
(10, 3),
(11, 4),
(12, 5),
(13, 6),
(14, 7),
(15, 8),
(3, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(3, 16),
(10, 17),
(11, 18),
(12, 19),
(13, 20),
(14, 21),
(15, 22),
(3, 23),
(10, 24),
(11, 25),
(12, 26),
(13, 27),
(14, 28),
(15, 29),
(3, 30),
(10, 31),
(11, 32),
(12, 33),
(13, 34),
(14, 35),
(15, 36);

INSERT INTO tbltur (TUR_AD) VALUES 
('Strateji'), 
('Aksiyon'), 
('Macera'), 
('Rol Yapma (RPG)'), 
('Simülasyon'), 
('Spor'), 
('Yarış'), 
('Bulmaca');



IF OBJECT_ID ( 'fncEnCokVakitGecirilenOyun') IS NOT NULL
	BEGIN
		-- Fonksiyon varsa sil
		DROP FUNCTION fncEnCokVakitGecirilenOyun;
	END
GO


CREATE FUNCTION dbo.fncEnCokVakitGecirilenOyun(@UYE_ID INT)
RETURNS INT
AS
BEGIN
    DECLARE @EnCokVakitGecirilenOyunID INT;

    -- Toplam vakit geçirilen oyunu buluyoruz
    SELECT TOP 1 
        @EnCokVakitGecirilenOyunID = os.oyun_ID
    FROM 
        tbluye_oyun_oynar oo
        INNER JOIN tblOyun_seanslar os ON oo.OYUNSEANS_ID = os.OYUNSEANS_ID
    WHERE 
        os.OLUSTURAN_UYE_ID = @UYE_ID
    GROUP BY 
        os.oyun_ID
    ORDER BY 
        SUM(DATEDIFF(MINUTE, os.baslangic_tarihi, os.bitis_tarihi)) DESC;

    RETURN @EnCokVakitGecirilenOyunID;
END;
GO

SELECT dbo.fncEnCokVakitGecirilenOyun(12) AS EnCokOynananOyun;





-----database de kullanılan fonksiyon 




------uye ve oyuna göre oynanan oyun sayısı 
CREATE FUNCTION fn_ToplamOynananOyun(@UYE_ID INT, @OYUN_ID INT)
RETURNS INT
AS
BEGIN
    DECLARE @ToplamOyunSayisi INT;

    -- Oyuncunun belirli bir oyunu kaç kez oynadığını hesaplayan sorgu
    SELECT 
        @ToplamOyunSayisi = COUNT(*) 
    FROM 
        tblOyun_seanslar OS
    INNER JOIN 
        tbloyun o ON o.OYUN_ID = OS.oyun_ID
    WHERE 
        OS.oyun_ID = @OYUN_ID 
        AND (OS.OLUSTURAN_UYE_ID = @UYE_ID OR OS.KAZANAN_UYE_ID = @UYE_ID);

    -- Hesaplanan toplam oyun sayısını döndürüyoruz
    RETURN @ToplamOyunSayisi;
END
GO


SELECT dbo.fn_ToplamOynananOyun(15,1) AS toplamoyunsayısı;
GO
