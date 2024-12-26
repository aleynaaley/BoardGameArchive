--Böyle bir fonksiyon var ise önce siliyoruz
IF OBJECT_ID ( 'fn_ToplamOynananOyun') IS NOT NULL
	BEGIN
		-- Fonksiyon varsa sil
		DROP FUNCTION fn_ToplamOynananOyun;
	END
GO


--Parametre olarak verilen uyenin ve oyunun kaç kez oynandığını döndüren fonksiyon(açıklama: toplam oynanan oyun sayısını oyun_seanlar tablosundaki olusturan_uye_ıd ve oyunu kazanan_ıd ile tespit ettik)
CREATE FUNCTION fn_ToplamOynananOyun(@UYE_ID INT, @OYUN_ID INT)
RETURNS INT
AS
BEGIN
    DECLARE @ToplamOyunSayisi INT;

    -- Oyuncunun belirli bir oyunu kaç kez oynadığını hesaplayan sorgu
    SELECT 
        @ToplamOyunSayisi = COUNT(*) 
    FROM 
        tblOyun_seanslar OS
    INNER JOIN 
        tbloyun O ON O.OYUN_ID = OS.oyun_ID
    WHERE 
        OS.oyun_ID = @OYUN_ID 
        AND (OS.OLUSTURAN_UYE_ID = @UYE_ID OR OS.KAZANAN_UYE_ID = @UYE_ID);

    -- Hesaplanan toplam oyun sayısını döndürüyoruz
    RETURN @ToplamOyunSayisi;
END
GO

-- 1 ID numaralı uye 13 ID numaralı oyunu kaç kez oynamıştır.
SELECT dbo.fn_ToplamOynananOyun(1,13) AS toplamoyunsayısı;
