use boardgame

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




-- sp için gerekli olan tablolar
INSERT INTO tblParaBirimi (PARABIRIMI_AD)
VALUES 
('TRY'),    -- Türk Lirası
('USD'),    -- Amerikan Doları
('EUR'),    -- Euro
('GBP'),    -- İngiliz Sterlini
('JPY');    -- Japon Yeni




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
