

SELECT tblUye.UYE_ID, tblUye.AD_Üye, tblUye.SOYAD_Üye , COUNT(DISTINCT tblOyuna_puan_verir.ID) as Puan_Verme_Sayisi
FROM tblUye
LEFT JOIN tblKoleksiyon ON tblUye.UYE_ID = tblKoleksiyon.UYE_ID
LEFT JOIN tbloyun ON tbloyun.OYUN_ID = tblKoleksiyon.OYUN_ID
LEFT JOIN tblOyuna_puan_verir ON tblKoleksiyon.KOLEKSIYON_ID = tblOyuna_puan_verir.KOLEKSIYON
GROUP BY tblUye.UYE_ID, tblUye.AD_Üye , tblUye.SOYAD_Üye ;


