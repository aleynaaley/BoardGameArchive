

SELECT tblUye.UYE_ID, tblUye.AD_�ye, tblUye.SOYAD_�ye , COUNT(tblOyuna_puan_verir.ID) as Puan_Verme_Sayisi
FROM tblUye
JOIN tblKoleksiyon ON tblUye.UYE_ID = tblKoleksiyon.UYE_ID
JOIN tblOyuna_puan_verir ON tblKoleksiyon.KOLEKSIYON_ID = tblOyuna_puan_verir.KOLEKSIYON
GROUP BY tblUye.UYE_ID, tblUye.AD_�ye , tblUye.SOYAD_�ye ;
