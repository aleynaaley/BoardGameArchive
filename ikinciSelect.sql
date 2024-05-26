

SELECT uye.AD_Üye AS Uye_Adi,
	   uye.SOYAD_Üye AS Uye_Soyadi,
       CONCAT(DATEDIFF(HOUR, uye.Son_Giriş_Tarihi, GETDATE()), ' Saat ', 
              DATEDIFF(MINUTE, uye.Son_Giriş_Tarihi, GETDATE()), ' Dakika') AS Son_Giristen_Beri_Gecen_Sure,
	  (
SELECT TOP 1 oy.OYUN_ASILAD     -- oyun tablosundan top 1'deki oyunu çekmek istiyoruz
FROM tblOyun oy 
INNER JOIN tblOyun_seanslar os ON oy.OYUN_ID = os.oyun_ID
INNER JOIN tbluye_oyun_oynar uoo ON os.OYUNSEANS_ID = uoo.OYUNSEANS_ID WHERE uoo.UYE_ID = uye.UYE_ID 
ORDER BY uoo.OYUNSEANS_ID DESC) AS Son_Satın_Alınan_Oyun FROM tblUye uye WHERE uye.UYE_ID IN (SELECT k.UYE_ID
FROM tblKoleksiyon k
WHERE k.OYUN_ID IN ( SELECT TOP 3 OYUN_ID FROM tblKoleksiyon WHERE MONTH = MONTH(DATEADD(MONTH, -1, GETDATE()))   --- burayı nasıl yapabiliriz bilemedim 
GROUP BY OYUN_ID ORDER BY COUNT(*) DESC) GROUP BY k.UYE_ID HAVING COUNT(DISTINCT k.OYUN_ID) = 3 -- en çok oynana üç oyunun tamamına sahip olan üyeler )
ORDER BY DATEDIFF(HOUR, uye.Son_Giriş_Tarihi, GETDATE()) DESC






	



---- yeni deneme


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
							FROM tblKoleksiyon k
							-- oyun son bir ayda en çok oynanan ilk 3 oyunlardan biri mi
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


	










	----------------------------

***CHATE TUĞBANINKİNİ İYİLEŞTİRMESİNİ SÖYLEDİM ŞÖYLE VERDİ
-- Adım 1: Geçen ayın en çok oynanan ilk 3 oyunu belirleyin
WITH TopGames AS (
    SELECT TOP 3
        OYUN_ID
    FROM
        tblOyun_seanslar
    WHERE
        DATEPART(YEAR, SEANS_TARIHI) = DATEPART(YEAR, DATEADD(MONTH, -1, GETDATE())) AND
        DATEPART(MONTH, SEANS_TARIHI) = DATEPART(MONTH, DATEADD(MONTH, -1, GETDATE()))
    GROUP BY
        OYUN_ID
    ORDER BY
        COUNT(*) DESC
),

-- Adım 2: Bu oyunların hepsine sahip üyeleri belirleyin
UsersWithTopGames AS (
    SELECT
        k.UYE_ID
    FROM
        tblKoleksiyon k
    WHERE
        k.OYUN_ID IN (SELECT OYUN_ID FROM TopGames)
    GROUP BY
        k.UYE_ID
    HAVING
        COUNT(DISTINCT k.OYUN_ID) = 3
),

-- Adım 3: Üyelerin son satın aldıkları oyunu belirleyin
LastPurchasedGame AS (
    SELECT
        u.UYE_ID,
        p.OYUN_ID AS LAST_GAME_ID,
        p.SATIN_ALMA_TARIHI
    FROM
        tblUye u
    LEFT JOIN
        tblSatinAlmalar p ON u.UYE_ID = p.UYE_ID
    WHERE
        p.SATIN_ALMA_TARIHI = (SELECT MAX(p2.SATIN_ALMA_TARIHI) FROM tblSatinAlmalar p2 WHERE p2.UYE_ID = u.UYE_ID)
)

-- Nihai sonuç kümesi
SELECT 
    uye.AD_Üye AS Uye_Adi,
    uye.SOYAD_Üye AS Uye_Soyadi,
    CONCAT(DATEDIFF(HOUR, uye.Son_Giriş_Tarihi, GETDATE()), ' Saat ', 
           DATEDIFF(MINUTE, uye.Son_Giriş_Tarihi, GETDATE()) % 60, ' Dakika') AS Son_Giristen_Beri_Gecen_Sure,
    g.OYUN_ASILAD AS Son_Satın_Alınan_Oyun
FROM 
    tblUye uye
INNER JOIN 
    UsersWithTopGames uwtg ON uye.UYE_ID = uwtg.UYE_ID
LEFT JOIN 
    LastPurchasedGame lpg ON uye.UYE_ID = lpg.UYE_ID
LEFT JOIN 
    tblOyun g ON lpg.LAST_GAME_ID = g.OYUN_ID
ORDER BY 
    DATEDIFF(HOUR, uye.Son_Giriş_Tarihi, GETDATE()) DESC;

