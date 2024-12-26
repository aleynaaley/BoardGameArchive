

-- View ın önceden var olup olmadığını kontrol ediyoruz 
IF OBJECT_ID ( 'vw_UyeOyunAnaliz') IS NOT NULL
	BEGIN
		-- view varsa sil
		DROP VIEW vw_UyeOyunAnaliz;
	END
GO

--Uyelerin ID, AD-SOYAD, sisteme son giriş tarihleri , oynadıkları oyunları ID , adı , oyunu kaç kez oynadıkları ve aç kez kazandıkları , kazanma yüzdeleri ve bu yüzdeye göre oyundaki başarı durumunu oluşturan view 
CREATE VIEW vw_UyeOyunAnaliz AS
SELECT 
    u.UYE_ID,
    u.AD_Üye + ' ' + u.SOYAD_Üye AS Ad_Soyad,  -- Ad ve Soyadı birleştiriyoruz
	CONVERT(DATE, u.Son_Giriş_Tarihi) AS Son_Giris_Tarihi,
    o.OYUN_ID,
    o.OYUN_ASILAD,
    dbo.fn_ToplamOynananOyun(u.UYE_ID, o.OYUN_ID) AS Oyun_Oynama_Sayisi,  -- Oyunu kaç kez oynadı
    -- Oyunu kaç kez kazandı
    COUNT(CASE WHEN os.KAZANAN_UYE_ID = u.UYE_ID THEN 1 END) AS Kazanma_Sayisi,

    -- Kazanma yüzdesi (eğer Oyun Oynama Sayısı sıfırsa 0 döner) ve % işareti eklenmiş hali
    '%' + FORMAT((COUNT(CASE WHEN os.KAZANAN_UYE_ID = u.UYE_ID THEN 1 END) * 100.0) /
			NULLIF(dbo.fn_ToplamOynananOyun(u.UYE_ID, o.OYUN_ID), 0),'N2') AS Kazanma_Yuzdesi,  -- Kazanma yüzdesini % işareti ve ',' sonra 2 basamak ile göstermek için
    
	-- Kazanma yüzdesine göre başarı durumu ekliyoruz
    CASE
        WHEN (COUNT(CASE WHEN os.KAZANAN_UYE_ID = u.UYE_ID THEN 1 END) * 100.0) / NULLIF(dbo.fn_ToplamOynananOyun(u.UYE_ID, o.OYUN_ID), 0) < 40 THEN 'Başarısız'
        WHEN (COUNT(CASE WHEN os.KAZANAN_UYE_ID = u.UYE_ID THEN 1 END) * 100.0) / NULLIF(dbo.fn_ToplamOynananOyun(u.UYE_ID, o.OYUN_ID), 0) >= 40 AND 
             (COUNT(CASE WHEN os.KAZANAN_UYE_ID = u.UYE_ID THEN 1 END) * 100.0) / NULLIF(dbo.fn_ToplamOynananOyun(u.UYE_ID, o.OYUN_ID), 0) < 70 THEN 'Orta Başarılı'
        ELSE 'Başarılı'
    END AS Basari_Durumu
	FROM tblUye u
		INNER JOIN tblOyun_seanslar os ON u.UYE_ID = os.OLUSTURAN_UYE_ID OR u.UYE_ID = os.KAZANAN_UYE_ID
		INNER JOIN tbloyun o ON os.oyun_ID = o.OYUN_ID
	GROUP BY 
		  o.OYUN_ID, u.UYE_ID, o.OYUN_ASILAD, u.AD_Üye, u.SOYAD_Üye, u.Son_Giriş_Tarihi;
GO



SELECT 
    a.UYE_ID,
	a.Son_Giris_Tarihi,
	U.Seviye,
	a.Ad_Soyad,
    a.OYUN_ID, 
    a.OYUN_ASILAD,
	t.TUR_AD,
    a.Oyun_Oynama_Sayisi, 
    a.Kazanma_Sayisi,
	a.Kazanma_Yuzdesi,
	a.Basari_Durumu
FROM vw_UyeOyunAnaliz a
	INNER JOIN tblUye U ON U.UYE_ID = A.UYE_ID
	INNER JOIN tbloyun_tur ot ON ot.OYUN_ID = a.OYUN_ID
	INNER JOIN tbltur t ON t.TUR_ID = ot.TUR_ID
