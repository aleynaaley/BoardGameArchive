

SELECT 
    tblUye.UYE_ID, 
    tblUye.AD_Üye, 
    tblUye.SOYAD_Üye, 
    Koleksiyon_Sayısı,
    Puan_Verme_Sayısı
FROM 
    tblUye
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


