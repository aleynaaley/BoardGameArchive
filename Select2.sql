-- sadece sütün isimlerini ve şeklini değiştirdim cümle aynı

SELECT 
    tblUye.AD_Üye AS Uye_Adi, 
    tblUye.SOYAD_Üye AS Uye_Soyadi, 
    tblUlke.ULKE_AD AS Ulke_Adi, 
    Sahip_Oldugu_Ana_Oyun_Sayisi,
    Kac_Oyuna_Puan_Vermis

FROM tblUye

LEFT JOIN tblUlke ON tblUye.ULKE_ID = tblUlke.ULKE_ID
LEFT JOIN ( SELECT UYE_ID, COUNT(KOLEKSIYON_ID) AS Sahip_Oldugu_Ana_Oyun_Sayisi
		    FROM tblKoleksiyon
            GROUP BY UYE_ID
		  ) AS KoleksiyonSayisi ON tblUye.UYE_ID = KoleksiyonSayisi.UYE_ID
LEFT JOIN ( SELECT  tblKoleksiyon.UYE_ID, COUNT(DISTINCT tblOyuna_puan_verir.ID) AS Kac_Oyuna_Puan_Vermis
            FROM tblKoleksiyon
			LEFT JOIN tblOyuna_puan_verir ON tblKoleksiyon.KOLEKSIYON_ID = tblOyuna_puan_verir.KOLEKSIYON
			GROUP BY tblKoleksiyon.UYE_ID
		  ) AS PuanVermeSayisi ON tblUye.UYE_ID = PuanVermeSayisi.UYE_ID;









SELECT 
    
    tblUye.AD_Üye, 
    tblUye.SOYAD_Üye, 
    tblUlke.ULKE_AD, 
    Oyun_Sayısı,
    Puan_Verme_Sayısı
FROM 
    tblUye
LEFT JOIN 
    tblUlke ON tblUye.ULKE_ID = tblUlke.ULKE_ID
LEFT JOIN (
    SELECT 
        UYE_ID,
        COUNT(KOLEKSIYON_ID) AS Oyun_Sayısı
    FROM 
        tblKoleksiyon
    GROUP BY 
        UYE_ID
) AS KoleksiyonSayisi ON tblUye.UYE_ID = KoleksiyonSayisi.UYE_ID
LEFT JOIN (
    SELECT 
        tblKoleksiyon.UYE_ID,
        COUNT(DISTINCT tblOyuna_puan_verir.ID) AS Puan_Verme_Sayısı
    FROM 
        tblKoleksiyon
    LEFT JOIN 
        tblOyuna_puan_verir ON tblKoleksiyon.KOLEKSIYON_ID = tblOyuna_puan_verir.KOLEKSIYON
    GROUP BY 
        tblKoleksiyon.UYE_ID
) AS PuanVermeSayisi ON tblUye.UYE_ID = PuanVermeSayisi.UYE_ID;




