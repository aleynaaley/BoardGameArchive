use BOARDGAME
	
-- tbloyun tablosuna veri ekleme
INSERT INTO tbloyun 
(OYUN_ASILAD, KOLEKSIYON_ODENEN_UCRET, KOLEKSIYON_SATIN_ALMA_TARIHI, KOLEKSIYON_SATIN_ALINDI_YER, 
 KOLEKSIYON_ENVANTERE_GIRIS_TARIHI, KOLEKSIYON_ENVANTER_LOKASYON, KOLEKSIYON_OZEL_YORUM, ACIKLAMA, 
 YORUM_YAPAN_KULLANICI_SAYISI, EN_COK_OYUN_SURE, EN_AZ_OYUN_SURE, OY_VEREN_KULLANICI_SAYISI, YAYINLANDIGI_YIL)
VALUES
-- 1. Oyun
('Catan', 150, '2023-12-01', 'Steam', 
 '2023-12-03', 'Dijital', 'RPG türünde mükemmel bir oyun.', 'Grafikler harika, hikaye sürükleyici.', 
 5000, 120, 10, 4800, '2015-05-19'),

-- 2. Oyun
('Ruh Adası', 200, '2024-01-15', 'Epic Games', 
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
 'İçerik sorunları giderilirse çok başarılı.', 7200, 150, 20, 7000, '2020-12-10'),
	
--8.oyun
('Everdell', 180, '2024-02-10', 'Amazon', 
 '2024-02-12', 'Fiziksel', 'Strateji ve hikaye anlatımı sevenlere hitap ediyor.', 
 'Görsellik açısından büyüleyici bir masaüstü oyun.', 1200, 90, 30, 1100, '2018-08-01'),

-- 9. Oyun: Nemesis
('Nemesis', 250, '2023-11-20', 'BoardGameShop', 
 '2023-11-22', 'Fiziksel', 'Hayatta kalma ve korku temalı bir masaüstü oyunu.', 
 'Alien teması sevenler için harika bir tercih.', 1500, 120, 45, 1450, '2018-01-15'),

-- 10. Oyun: Brass: Birmingham
('Brass: Birmingham', 220, '2024-01-05', 'Steam', 
 '2024-01-07', 'Dijital', 'Ekonomi ve strateji türlerinin en iyilerinden biri.', 
 'Sanayi devrimi temalı strateji oyunu.', 2500, 120, 60, 2450, '2018-06-15'),

-- 11. Oyun: Concordia
('Concordia', 180, '2023-09-12', 'Epic Games', 
 '2023-09-14', 'Dijital', 'Ticaret ve strateji tabanlı klasik bir masaüstü oyunu.', 
 'Basit kurallar, derin strateji.', 1700, 90, 45, 1650, '2013-10-01'),

-- 12. Oyun: Root
('Root', 210, '2023-10-10', 'Tabletopia', 
 '2023-10-12', 'Dijital', 'Farklı ırkların mücadele ettiği asimetrik bir strateji oyunu.', 
 'Her bir fraksiyonun farklı oynanışı var.', 2300, 120, 30, 2200, '2018-09-01'),

--13. Oyun: Wingspan
('Wingspan', 150, '2023-08-01', 'BoardGameArena', 
 '2023-08-03', 'Dijital', 'Kuş temalı, ödüllü bir strateji ve koleksiyon oyunu.', 
 'Harika görseller ve rahatlatıcı bir oynanış.', 4500, 75, 30, 4400, '2019-03-08'),

-- 14. Oyun: Barrage
('Barrage', 240, '2024-03-15', 'BoardGameShop', 
 '2024-03-17', 'Fiziksel', 'Su kaynaklarını yönetmeye dayalı karmaşık bir strateji oyunu.', 
 'Ekonomi yönetimi ve kaynak kontrolü sevenler için ideal.', 900, 120, 60, 870, '2019-05-20'),

-- 15. Oyun: Cascadia
('Cascadia', 140, '2023-05-12', 'Amazon', 
 '2023-05-14', 'Fiziksel', 'Doğal yaşam alanları kurmaya dayalı bir masaüstü oyunu.', 
 'Sade ve bağımlılık yapan bir bulmaca oyunu.', 3200, 45, 20, 3100, '2021-08-01'),

-- 16. Oyun: Clans of Caledonia
('Clans of Caledonia', 210, '2024-01-22', 'Steam', 
 '2024-01-24', 'Dijital', 'İskoçya temalı ekonomi yönetimi oyunu.', 
 'Çok derin ve zorlu bir strateji oyunu.', 1400, 120, 60, 1350, '2017-10-01'),

-- 17. Oyun: Gloomhaven
('Gloomhaven', 300, '2023-07-10', 'Steam', 
 '2023-07-12', 'Dijital', 'Dünyaca ünlü taktiksel bir zindan keşif oyunu.', 
 'RPG, taktik ve stratejinin birleşimi.', 3500, 150, 60, 3400, '2017-12-01'),

-- 18. Oyun: Splendor
('Splendor', 130, '2022-11-15', 'Steam', 
 '2022-11-17', 'Dijital', 'Elmas ticareti yapmaya dayalı klasik bir strateji oyunu.', 
 'Hızlı oynanabilirlik ve basit kurallar.', 5000, 30, 10, 4900, '2014-03-15'),

-- 19. Oyun: Terraforming Mars
('Terraforming Mars', 280, '2024-04-01', 'BoardGameShop', 
 '2024-04-03', 'Fiziksel', 'Mars’ı yaşanabilir hale getirme üzerine kurulu bir strateji oyunu.', 
 'Derin strateji gerektiren, yoğun bir oyun.', 1800, 180, 90, 1750, '2016-06-01'),

-- 20. Oyun: 7 Wonders
('7 Wonders', 170, '2023-02-20', 'Amazon', 
 '2023-02-22', 'Fiziksel', 'Kart tabanlı bir medeniyet inşa etme oyunu.', 
 'Hızlı oynanış ve stratejik karar alma gerektiren bir oyun.', 6000, 30, 10, 5900, '2010-08-01'),

-- 21. Oyun: Azul
('Azul', 150, '2023-12-25', 'BoardGameShop', 
 '2023-12-27', 'Fiziksel', 'Portekiz çinileriyle oluşturulan görsel bir şaheser.', 
 'Basit kurallar ve görselliği ile ödüller aldı.', 8000, 30, 15, 7900, '2017-10-15'),

-- 22. Oyun: Agricola
('Agricola', 200, '2023-03-10', 'BoardGameArena', 
 '2023-03-12', 'Dijital', 'Çiftlik yönetimi üzerine kurulu bir strateji oyunu.', 
 'İşçileri yerleştir ve kaynakları topla.', 4200, 120, 60, 4100, '2007-10-01');




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



INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Seyhan', 1);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Kahta', 2);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Merkez', 3);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Doğubayazıt', 4);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Merzifon', 5);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Çankaya', 6);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Muratpaşa', 7);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Hopa', 8);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Efeler', 9);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Karesi', 10);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Bozüyük', 11);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Genç', 12);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Tatvan', 13);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Gerede', 14);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Bucak', 15);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Osmangazi', 16);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Biga', 17);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Ilgaz', 18);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Osmancık', 19);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Pamukkale', 20);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Bağlar', 21);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Keşan', 22);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Kovancılar', 23);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Üzümlü', 24);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Palandöken', 25);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Tepebaşı', 26);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Şahinbey', 27);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Espiye', 28);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Torul', 29);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Yüksekova', 30);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('İskenderun', 31);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Yalvaç', 32);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Tarsus', 33);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Kadıköy', 34);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Konak', 35);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Kağızman', 36);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Tosya', 37);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Melikgazi', 38);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Lüleburgaz', 39);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Kaman', 40);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('İzmit', 41);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Selçuklu', 42);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Tavşanlı', 43);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Battalgazi', 44);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Akhisar', 45);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Elbistan', 46);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Kızıltepe', 47);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Bodrum', 48);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Malazgirt', 49);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Ürgüp', 50);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Bor', 51);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Altınordu', 52);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Ardeşen', 53);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Adapazarı', 54);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Atakum', 55);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Baykan', 56);





INSERT INTO tblOyuncu_sayısı_oylaması (OY_ENIYI, OY_TAVSIYE_EDILIR, OY_TAVSIYE_EDILMAZ, OYUN_ID) VALUES
(1, 1, 0, 1),  -- 1. Oyun
(0, 1, 0, 2),  -- 2. Oyun
(1, 0, 1, 3),  -- 3. Oyun
(1, 1, 0, 4),  -- 4. Oyun
(0, 0, 1, 5),  -- 5. Oyun
(1, 1, 1, 6),  -- 6. Oyun
(0, 1, 1, 7),  -- 7. Oyun
(1, 0, 0, 8),  -- 8. Oyun
(0, 1, 0, 9),  -- 9. Oyun
(1, 1, 0, 10), -- 10. Oyun
(1, 0, 1, 11), -- 11. Oyun
(0, 0, 1, 12), -- 12. Oyun
(1, 1, 0, 13), -- 13. Oyun
(0, 1, 0, 14), -- 14. Oyun
(1, 0, 1, 15), -- 15. Oyun
(1, 1, 0, 16), -- 16. Oyun
(0, 0, 1, 17), -- 17. Oyun
(1, 1, 1, 18), -- 18. Oyun
(0, 1, 1, 19), -- 19. Oyun
(1, 0, 0, 20), -- 20. Oyun
(0, 1, 0, 21), -- 21. Oyun
(1, 1, 0, 22); -- 22. Oyun


INSERT INTO tblYas_oylamasi (YAS, OYUN_ID) VALUES 
(18, 1),   -- 1. Oyun: Genç yaş grubu oynuyor
(25, 2),   -- 2. Oyun: Genç yetişkinler tercih ediyor
(30, 3),   -- 3. Oyun: Orta yaş grubunun ilgi alanı
(35, 4),   -- 4. Oyun: Strateji seven yetişkinler
(22, 5),   -- 5. Oyun: Üniversite çağındaki gençler oynuyor
(40, 6),   -- 6. Oyun: Olgun yaş grubunun tercihi
(28, 7),   -- 7. Oyun: Genç ve yetişkin karışık
(33, 8),   -- 8. Oyun: Zeka oyunlarını seven yetişkinler
(19, 9),   -- 9. Oyun: Lise ve üniversite öğrencileri
(26, 10),  -- 10. Oyun: Yetişkin ve gençler arasında popüler
(21, 11),  -- 11. Oyun: Genç oyuncular tercih ediyor
(45, 12),  -- 12. Oyun: Strateji ve simülasyon seven olgun oyuncular
(50, 13),  -- 13. Oyun: Daha yaşlı kullanıcı kitlesine hitap ediyor
(29, 14),  -- 14. Oyun: Yetişkin oyuncular
(23, 15),  -- 15. Oyun: Genç yetişkinler için popüler
(32, 16),  -- 16. Oyun: Orta yaş grubunda tercih edilen oyun
(38, 17),  -- 17. Oyun: Yetişkinlerin stratejiye ilgisi
(20, 18),  -- 18. Oyun: Genç üniversite öğrencileri
(27, 19),  -- 19. Oyun: Genç yetişkinler ve ofis çalışanları
(36, 20),  -- 20. Oyun: Olgun kullanıcılar tarafından beğenilen oyun
(24, 21),  -- 21. Oyun: Öğrenciler tarafından sıkça oynanıyor
(42, 22);  -- 22. Oyun: Orta yaş grubunun ilgisini çeken oyun


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



 INSERT INTO tblUye 
(AD_Üye, SOYAD_Üye, Cinsiyet, DOGUMTARIHI, E_mail, Şifre, Durum, Kayıt_Tarihi, Açıklama, Kullanıcı_Türü, 
 Seviye, Son_Giriş_Tarihi, Takip_Eden_Kullanıcı_Sayısı, Beğenen_Kullanıcı_Sayısı, Beğenilen_Kullanıcı_Sayısı, 
 Profil_Bağlantısı, Son_Profil_Güncelleme_Tarihi, ULKE_ID, IL_ID, ILCE_ID, OYUNCU_SAYISI_OYLAMASI_ID, 
 YAS_OYLAMASI_ID, KARMASIKLIK_OYLAMASI_ID, DIL_BAGIMLILIGI_ID)

VALUES

 ('Muhammet', 'Tekin', 'E', '1989-12-25', 'muhammet.tekin@example.com', 'B1gSecureKey!', 'Ücretli', '2023-11-30', 
 'Aksiyon ve macera oyunlarına ilgi duyar.', 'Action-Adventure', 20, '2024-12-20', 400, 180, 150, 
 'https://profile.example.com/muhammettekin', '2024-04-01', 1, 34, 5, 3, 3, 2, 4),

 ('Aleyna', 'Erkul', 'K', '2003-01-23', 'aleyna.erkul@example.com', 'dahadagucluuuuuSifre!', 'Ücretli', '2023-12-15', 
 'Strateji oyunlarına ilgi duyar.', 'Casual', 8, '2024-12-08', 500, 120, 100, 
 'https://profile.example.com/aleyaley', '2024-01-06', 1, 34, 2, 4, 3, 5, 2),

  
  ('Tuğba Nur', 'Aslan', 'K', '2002-07-02', 'tuğba.aslann@example.com', 'dahadahadahagucluSifre!', 'Ücretli', '2023-12-15', 
 'aksiyon oyunlarına ilgi duyar.', 'Casual', 9, '2024-12-08', 600, 120, 120, 
 'https://profile.example.com/tuba', '2024-08-06', 1, 34, 2, 2, 5, 5, 2),

 
  ('Esma Nur', 'Aksoy', 'K', '2002-06-11', 'esmanur.aksoy@example.com', 'gucluSifre2024!', 'Ücretli', '2023-12-20', 
 'RPG oyunlarına ilgi duyar.', 'RPG', 7, '2024-12-10', 300, 150, 130, 
 'https://profile.example.com/esmanuraksoy', '2024-02-01', 1, 33, 3, 4, 2, 3, 5),

 ('Zeynep', 'Tatar', 'K', '2003-06-24', 'zeynep.tatar@example.com', 'SuperGuv3nlik!', 'Ücretsiz', '2023-12-25', 
 'Bulmaca oyunlarını sever.', 'Puzzle', 6, '2024-12-15', 100, 90, 85, 
 'https://profile.example.com/zeyneptatar', '2024-03-01', 1, 37, 4, 2, 1, 4, 3),


('Ahmet', 'Yılmaz', 'E', '1995-03-15', 'ahmet.yilmaz@example.com', 'sifre123', 'Ücretsiz', '2024-01-01', 
 'Sık oyun oynar.', 'Gamer', 10, '2024-01-10', 250, 200, 180, 
 'https://profile.example.com/ahmetyilmaz', '2024-01-05', 1, 34, 2, 3, 2, 4, 1),

 ('Elif', 'Demir', 'K', '1988-07-20', 'elif.demir@example.com', 'gucluSifre!', 'Ücretsiz', '2023-12-15', 
 'Strateji oyunlarına ilgi duyar.', 'Casual', 8, '2024-01-08', 150, 120, 100, 
 'https://profile.example.com/elifdemir', '2024-01-06', 1, 34, 2, 2, 3, 5, 2),

 ('Mehmet', 'Çelik', 'E', '2002-11-10', 'mehmet.celik@example.com', '12345Abc', 'Ücretli', '2023-11-20', 
 'Yeni oyunları dener.', 'Tester', 5, '2024-01-03', 50, 40, 35, 
 'https://profile.example.com/mehmetcelik', '2024-01-02', 1, 35, 4, 1, 1, 2, 3),


 ('Ayşe', 'Kaya', 'K', '1990-02-14', 'ayse.kaya@example.com', '!SuperPass22', 'Ücretsiz', '2023-12-10', 
 'Aile oyunlarını sever.', 'Family', 6, '2024-01-09', 120, 110, 95, 
 'https://profile.example.com/aysekaya', '2024-01-07', 1, 36, 1, 4, 5, 3, 4),

 ('Fatih', 'Ak', 'E', '1985-06-30', 'fatih.ak@example.com', 'Passw0rd*', 'Ücretsiz', '2023-12-05', 
 'Yarış oyunlarına meraklı.', 'Competitive', 9, '2024-01-04', 180, 160, 140, 
 'https://profile.example.com/fatihak', '2024-01-06', 1, 16, 5, 5, 4, 4, 1);









-- tblOyun_seanslar tablosuna veri ekleme (güncellenmiş)
INSERT INTO tblOyun_seanslar (aciklama, baslangic_tarihi, bitis_tarihi, OLUSTURAN_UYE_ID, KAZANAN_UYE_ID, oyun_ID) VALUES
('Oyun 1 Seansı', '2024-12-01 10:00:00', '2024-12-01 10:40:00', 6, 8, 1),
('Oyun 2 Seansı', '2024-12-01 12:00:00', '2024-12-01 12:40:00', 10, 1, 2),
('Oyun 3 Seansı', '2024-12-01 14:00:00', '2024-12-01 14:50:00', 1, 1, 13),
('Oyun 4 Seansı', '2024-12-01 16:00:00', '2024-12-01 16:40:00', 2, 1, 4),
('Oyun 5 Seansı', '2024-12-01 18:00:00', '2024-12-01 18:30:00', 10, 4, 5),
('Oyun 6 Seansı', '2024-12-05 08:00:00', '2024-12-05 08:30:00', 5, 8, 10),
('Oyun 7 Seansı', '2024-12-05 10:00:00', '2024-12-05 10:40:00', 4, 10, 7),
('Oyun 8 Seansı', '2024-12-05 12:00:00', '2024-12-05 12:20:00', 6, 6, 3),
('Oyun 9 Seansı', '2024-12-05 14:00:00', '2024-12-05 14:30:00', 2, 7, 19),
('Oyun 10 Seansı', '2024-12-05 16:00:00', '2024-12-05 16:50:00', 3, 9, 22),
('Oyun 11 Seansı', '2024-12-05 18:00:00', '2024-12-05 18:40:00', 1, 4, 8),
('Oyun 12 Seansı', '2024-12-05 20:00:00', '2024-12-05 20:20:00', 9, 10, 14),
('Oyun 13 Seansı', '2024-12-05 22:00:00', '2024-12-05 22:40:00', 10, 1, 5),
('Oyun 14 Seansı', '2024-12-06 01:00:00', '2024-12-06 01:30:00', 8, 6, 11),
('Oyun 15 Seansı', '2024-12-06 03:00:00', '2024-12-06 03:40:00', 5, 2, 21),
('Oyun 16 Seansı', '2024-12-06 05:00:00', '2024-12-06 05:20:00', 6, 6, 4),
('Oyun 17 Seansı', '2024-12-06 07:00:00', '2024-12-06 07:50:00', 7, 5, 13),
('Oyun 18 Seansı', '2024-12-06 09:00:00', '2024-12-06 09:30:00', 3, 8, 9),
('Oyun 19 Seansı', '2024-12-06 11:00:00', '2024-12-06 11:40:00', 10, 2, 17),
('Oyun 20 Seansı', '2024-12-06 13:00:00', '2024-12-06 13:30:00', 4, 9, 6),
('Oyun 21 Seansı', '2024-12-06 15:00:00', '2024-12-06 15:40:00', 2, 7, 1),
('Oyun 22 Seansı', '2024-12-06 17:00:00', '2024-12-06 17:50:00', 8, 3, 20),
('Oyun 23 Seansı', '2024-12-06 19:00:00', '2024-12-06 19:30:00', 9, 10, 18),
('Oyun 24 Seansı', '2024-12-06 21:00:00', '2024-12-06 21:40:00', 7, 8, 15),
('Oyun 25 Seansı', '2024-12-06 23:00:00', '2024-12-06 23:30:00', 1, 5, 3),
('Oyun 26 Seansı', '2024-12-07 01:00:00', '2024-12-07 01:30:00', 6, 1, 16),
('Oyun 27 Seansı', '2024-12-07 03:00:00', '2024-12-07 03:40:00', 4, 6, 8),
('Oyun 28 Seansı', '2024-12-07 05:00:00', '2024-12-07 05:20:00', 10, 7, 2),
('Oyun 29 Seansı', '2024-12-07 07:00:00', '2024-12-07 07:50:00', 8, 4, 12),
('Oyun 30 Seansı', '2024-12-07 09:00:00', '2024-12-07 09:30:00', 5, 9, 14),
('Oyun 31 Seansı', '2024-12-07 11:00:00', '2024-12-07 11:40:00', 7, 3, 19),
('Oyun 32 Seansı', '2024-12-07 13:00:00', '2024-12-07 13:50:00', 2, 8, 22),
('Oyun 33 Seansı', '2024-12-07 15:00:00', '2024-12-07 15:40:00', 9, 5, 11),
('Oyun 34 Seansı', '2024-12-07 17:00:00', '2024-12-07 17:20:00', 1, 4, 6),
('Oyun 35 Seansı', '2024-12-07 19:00:00', '2024-12-07 19:30:00', 4, 1, 7),
('Oyun 36 Seansı', '2024-12-07 21:00:00', '2024-12-07 21:40:00', 10, 9, 5),
('Oyun 37 Seansı', '2024-12-07 23:00:00', '2024-12-07 23:50:00', 6, 8, 17),
('Oyun 38 Seansı', '2024-12-08 01:00:00', '2024-12-08 01:30:00', 3, 7, 18),
('Oyun 39 Seansı', '2024-12-08 03:00:00', '2024-12-08 03:40:00', 8, 2, 20),
('Oyun 40 Seansı', '2024-12-08 05:00:00', '2024-12-08 05:20:00', 5, 6, 13),
('Oyun 41 Seansı', '2024-12-08 07:00:00', '2024-12-08 07:30:00', 1, 10, 4),
('Oyun 42 Seansı', '2024-12-08 09:00:00', '2024-12-08 09:20:00', 2, 4, 9),
('Oyun 43 Seansı', '2024-12-08 11:00:00', '2024-12-08 11:40:00', 7, 3, 1),
('Oyun 44 Seansı', '2024-12-08 13:00:00', '2024-12-08 13:50:00', 9, 6, 22),
('Oyun 45 Seansı', '2024-12-08 15:00:00', '2024-12-08 15:40:00', 10, 7, 19),
('Oyun 46 Seansı', '2024-12-08 17:00:00', '2024-12-08 17:30:00', 3, 1, 11),
('Oyun 47 Seansı', '2024-12-05 14:00:00', '2024-12-05 14:40:00', 2, 5, 12),
('Oyun 48 Seansı', '2024-12-05 16:00:00', '2024-12-05 16:30:00', 10, 4, 16),
('Oyun 49 Seansı', '2024-12-05 18:00:00', '2024-12-05 18:50:00', 6, 10, 9),
('Oyun 50 Seansı', '2024-12-05 20:00:00', '2024-12-05 20:30:00', 9, 9, 20),
('Oyun 51 Seansı', '2024-12-05 22:00:00', '2024-12-05 22:40:00', 4, 2, 14),
('Oyun 52 Seansı', '2024-12-06 01:00:00', '2024-12-06 01:30:00', 3, 6, 5),
('Oyun 53 Seansı', '2024-12-06 03:00:00', '2024-12-06 03:40:00', 8, 1, 19),
('Oyun 54 Seansı', '2024-12-06 05:00:00', '2024-12-06 05:20:00', 5, 5, 7);





INSERT INTO tbluye_oyun_oynar (UYE_ID, OYUNSEANS_ID) VALUES
(6, 1),
(10, 2),
(1, 3),
(2, 4),
(10, 5),
(5, 6),
(4, 7),
(6, 8),
(2, 9),
(3, 10),
(1, 11),
(9, 12),
(10, 13),
(8, 14),
(5, 15),
(6, 16),
(7, 17),
(3, 18),
(10, 19),
(4, 20),
(2, 21),
(8, 22),
(9, 23),
(7, 24),
(1, 25),
(6, 26),
(4, 27),
(10, 28),
(8, 29),
(5, 30),
(7, 31),
(2, 32),
(9, 33),
(1, 34),
(4, 35),
(10, 36),
(6, 37),
(3, 38),
(8, 39),
(5, 40),
(1, 41),
(2, 42),
(7, 43),
(9, 44),
(10, 45),
(3, 46),
(2, 47),
(10, 48),
(6, 49),
(9, 50),
(4, 51),
(3, 52),
(8, 53),
(5, 54);


INSERT INTO tbltur (TUR_AD) VALUES 
('Strateji'), 
('Aksiyon'), 
('Macera'), 
('Rol Yapma (RPG)'), 
('Simülasyon'), 
('Spor'), 
('Yarış'), 
('Bulmaca');




-- sp için gerekli olan tablolar
INSERT INTO tblParaBirimi (PARABIRIMI_AD)
VALUES 
('TRY'),    -- Türk Lirası
('USD'),    -- Amerikan Doları
('EUR'),    -- Euro
('GBP'),    -- İngiliz Sterlini
('JPY');    -- Japon Yeni






INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (1, 8);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (2, 5);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (3, 5);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (4, 6);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (5, 4);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (6, 3);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (7, 5);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (8, 7);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (9, 6);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (10, 5);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (11, 7);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (12, 6);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (13, 8);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (14, 2);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (15, 6);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (16, 3);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (17, 3);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (18, 6);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (19, 2);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (20, 1);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (21, 2);
INSERT INTO tbloyun_tur (OYUN_ID, TUR_ID) VALUES (22, 4);
