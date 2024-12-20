USE boardgame
--1.sorgu	
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
LEFT JOIN ( SELECT UYE_ID, COUNT(KOLEKSIYON_ID) AS Sahip_Oldugu_Ana_Oyun_Sayisi FROM tblKoleksiyon GROUP BY UYE_ID) AS KoleksiyonSayisi ON tblUye.UYE_ID = KoleksiyonSayisi.UYE_ID
LEFT JOIN ( SELECT  tblKoleksiyon.UYE_ID, COUNT(DISTINCT tblOyuna_puan_verir.ID) AS Kac_Oyuna_Puan_Vermis, AVG(tblOyuna_puan_verir.PUAN) AS Ortalama_Puan FROM tblKoleksiyon LEFT JOIN tblOyuna_puan_verir ON tblKoleksiyon.KOLEKSIYON_ID = tblOyuna_puan_verir.KOLEKSIYON GROUP BY tblKoleksiyon.UYE_ID) AS PuanVermeSayisi ON tblUye.UYE_ID = PuanVermeSayisi.UYE_ID
LEFT JOIN ( SELECT  tbluye_oyun_oynar.UYE_ID, COUNT(tbluye_oyun_oynar.OYNAR_ID) AS Oyun_Seansi_Sayisi FROM tbluye_oyun_oynar GROUP BY tbluye_oyun_oynar.UYE_ID) AS OyunSeansiSayisi ON tblUye.UYE_ID = OyunSeansiSayisi.UYE_ID
LEFT JOIN ( SELECT  tbluye_oyun_oynar.UYE_ID, COUNT(tbluye_oyun_oynar.OYNAR_ID) AS Ticket_to_Ride_Oynama_Sayisi FROM tbluye_oyun_oynar INNER JOIN tbloyun ON tbluye_oyun_oynar.OYUNSEANS_ID = tbloyun.OYUN_ID 
WHERE tbloyun.OYUN_ASILAD = 'Ticket to Ride' GROUP BY tbluye_oyun_oynar.UYE_ID ) AS TicketToRideOynamaSayisi ON tblUye.UYE_ID = TicketToRideOynamaSayisi.UYE_ID;

--2.sorgu

SELECT uye.AD_Üye AS Uye_Adi,
uye.SOYAD_Üye AS Uye_Soyadi,
CONCAT(DATEDIFF(HOUR, uye.Son_Giriş_Tarihi, GETDATE()), ' Saat ', 
DATEDIFF(MINUTE, uye.Son_Giriş_Tarihi, GETDATE()), ' Dakika') AS Son_Giristen_Beri_Gecen_Sure,
	(
       SELECT TOP 1 oy.OYUN_ASILAD     -- oyun tablosundan top 1'deki oyunu çekmek istiyoruz
       FROM tblOyun oy 
       INNER JOIN tblOyun_seanslar os ON oy.OYUN_ID = os.oyun_ID
       INNER JOIN tbluye_oyun_oynar uoo ON os.OYUNSEANS_ID = uoo.OYUNSEANS_ID
       WHERE uoo.UYE_ID = uye.UYE_ID 
       ORDER BY uoo.OYUNSEANS_ID DESC) AS Son_Satın_Alınan_Oyun
       FROM tblUye uye
       WHERE uye.UYE_ID IN (SELECT k.UYE_ID
       FROM tblKoleksiyon k  -- oyun son bir ayda en çok oynanan ilk 3 oyunlardan biri mi
       WHERE k.OYUN_ID IN ( SELECT TOP 3 k.OYUN_ID
       FROM tblKoleksiyon k
       INNER JOIN tblOyun_seanslar os ON k.OYUN_ID = os.oyun_ID
       WHERE os.baslangic_tarihi BETWEEN DATEADD(MONTH, -1, GETDATE()) AND DATEADD(MONTH, 0, GETDATE())
       GROUP BY k.OYUN_ID
       ORDER BY COUNT(*) DESC
)
        GROUP BY k.UYE_ID
	HAVING COUNT(DISTINCT k.OYUN_ID) = 3 -- en çok oynana üç oyunun tamamına sahip olan üyeler
)
 ORDER BY DATEDIFF(HOUR, uye.Son_Giriş_Tarihi, GETDATE()) DESC





INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Merkez', 1);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Kadıköy', 34);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Çankaya', 6);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Konak', 35);
INSERT INTO tblIlce (ILCE_AD, IL_KODU) VALUES ('Osmangazi', 16);
