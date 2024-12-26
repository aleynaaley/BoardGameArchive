-- Backuptaki veriler performans farkını görmekte yetersiz olduğu için burda geçici tablo oluşturup ratgele veriler ekledik
CREATE TABLE tblOyun (
    OYUN_ID INT PRIMARY KEY IDENTITY(1,1),
    OYUN_ASILAD NVARCHAR(100),            
    YAYINLANDIGI_YIL DATE,                 
    OY_VEREN_KULLANICI_SAYISI INT          
);
GO
SELECT * FROM tblOyun



-- Rastgele veri ekleme. 
SET NOCOUNT ON;
DECLARE @i INT = 1;
WHILE @i <= 1600
BEGIN
    INSERT INTO tblOyun (OYUN_ASILAD, YAYINLANDIGI_YIL, OY_VEREN_KULLANICI_SAYISI)
    VALUES (
        CONCAT('Oyun_', @i % 10000),           -- 10,000 farklı oyun adı
        DATEADD(YEAR, -(@i % 30), GETDATE()), -- Rastgele yıl (son 30 yıl içinde)
        ABS(CHECKSUM(NEWID()) % 5000)         -- 0-5000 arasında kullanıcı sayısı
    );
    SET @i = @i + 1;
END;
GO



-- İlk sorgu: İndeks oluşturulmadan sorgu performansını test et
SET STATISTICS IO ON;

SELECT 
    OYUN_ID, OYUN_ASILAD, YAYINLANDIGI_YIL, OY_VEREN_KULLANICI_SAYISI
FROM 
    tblOyun
WHERE 
    YAYINLANDIGI_YIL > '2010-01-01'
    AND OY_VEREN_KULLANICI_SAYISI > 1000;
SET STATISTICS IO OFF;
GO



-- İlgili kolonlara non-clustered index oluştur
CREATE NONCLUSTERED INDEX IX_tblOyun_Yil_KullaniciSayisi
ON tblOyun (YAYINLANDIGI_YIL, OY_VEREN_KULLANICI_SAYISI)
INCLUDE (OYUN_ASILAD);
GO


-- İndeks oluşturulduktan sonra aynı sorguyu çalıştır
SET STATISTICS IO ON;

SELECT 
    OYUN_ID, OYUN_ASILAD, YAYINLANDIGI_YIL, OY_VEREN_KULLANICI_SAYISI
FROM 
    tblOyun
WHERE 
    YAYINLANDIGI_YIL > '2010-01-01'
    AND OY_VEREN_KULLANICI_SAYISI > 1000;

SET STATISTICS IO OFF;
GO
