
CREATE VIEW vw_UyeEnCokOynadigiOyun
AS
SELECT 
    U.UYE_ID,
    U.AD_Üye + ' ' + U.SOYAD_Üye AS UYE_AD_SOYAD,
    OY.OYUN_ID,
    FORMAT(OS.baslangic_tarihi, 'yyyy-MM-dd HH:mm') AS OYUN_BASLANGIC_TARIHI,
    FORMAT(OS.bitis_tarihi, 'yyyy-MM-dd HH:mm') AS OYUN_BITIS_TARIHI,
    DATEDIFF(MINUTE, OS.baslangic_tarihi, OS.bitis_tarihi) AS OYUN_SURESI_DAKIKA,
    
    -- En çok oynanan oyunu getiren fonksiyon kullanımı
    (SELECT dbo.fn_EnCokOynananOyunID(U.UYE_ID)) AS EN_COK_OYNADIGI_OYUN_ID,

    -- CASE ifadeleriyle yorum ekliyoruz
    CASE 
        WHEN DATEDIFF(MINUTE, OS.baslangic_tarihi, OS.bitis_tarihi) > 180 THEN 'Uzun Süreli Oyun'
        WHEN DATEDIFF(MINUTE, OS.baslangic_tarihi, OS.bitis_tarihi) BETWEEN 120 AND 180 THEN 'Orta Süreli Oyun'
        ELSE 'Kısa Süreli Oyun'
    END AS OYUN_SURE_YORUMU

FROM 
    tblUye U
    INNER JOIN tbluye_oyun_oynar UO ON U.UYE_ID = UO.UYE_ID
    INNER JOIN tblOyun_seanslar OS ON UO.OYUNSEANS_ID = OS.OYUNSEANS_ID
    INNER JOIN tbloyun OY ON OS.oyun_ID = OY.OYUN_ID
WHERE 
    OY.OYUN_ID = (SELECT dbo.fn_EnCokOynananOyun(U.UYE_ID)) -- Sadece üyenin en çok oynadığı oyun
ORDER BY 
    DATEDIFF(MINUTE, OS.baslangic_tarihi, OS.bitis_tarihi) DESC;
GO





-----


CREATE VIEW vw_UyeEnCokOynadigiOyun
AS
SELECT 
    U.UYE_ID,
    U.AD_Üye + ' ' + U.SOYAD_Üye AS UYE_AD_SOYAD,
    OY.OYUN_ID,
    SUM(DATEDIFF(MINUTE, OS.baslangic_tarihi, OS.bitis_tarihi)) AS TOPLAM_OYUN_SURESI,
    
    -- CASE ifadeleriyle toplam süreye göre yorum
    CASE 
        WHEN SUM(DATEDIFF(MINUTE, OS.baslangic_tarihi, OS.bitis_tarihi)) > 500 THEN 'Sık Oynanan Oyun'
        ELSE 'Nadir Oynanan Oyun'
    END AS OYUN_YORUMU,
    
    K.KATEGORI_AD

FROM 
    tblUye U
    INNER JOIN tbluye_oyun_oynar UO ON U.UYE_ID = UO.UYE_ID
    INNER JOIN tblOyun_seanslar OS ON UO.OYUNSEANS_ID = OS.OYUNSEANS_ID
    INNER JOIN tbloyun OY ON OS.oyun_ID = OY.OYUN_ID
    INNER JOIN tblKategori K ON OY.KATEGORI_ID = K.KATEGORI_ID
WHERE 
    OY.OYUN_ID = dbo.fn_EnCokOynananOyun(U.UYE_ID)
GROUP BY 
    U.UYE_ID, U.AD_Üye, U.SOYAD_Üye, OY.OYUN_ID, K.KATEGORI_AD
ORDER BY 
    SUM(DATEDIFF(MINUTE, OS.baslangic_tarihi, OS.bitis_tarihi)) DESC;
GO
