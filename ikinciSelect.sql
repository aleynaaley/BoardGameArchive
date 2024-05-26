

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
						    WHERE k.OYUN_ID IN ( SELECT TOP 3 OYUN_ID
												 FROM tblKoleksiyon
											     WHERE MONTH = MONTH(DATEADD(MONTH, -1, GETDATE()))   --- burayı nasıl yapabiliriz bilemedim
												 GROUP BY OYUN_ID
											     ORDER BY COUNT(*) DESC
											   )
                               GROUP BY k.UYE_ID
								HAVING COUNT(DISTINCT k.OYUN_ID) = 3 -- en çok oynana üç oyunun tamamına sahip olan üyeler
)
 ORDER BY DATEDIFF(HOUR, uye.Son_Giriş_Tarihi, GETDATE()) DESC
