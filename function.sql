use boardgame

-- Fonksiyonun var olup olmadığını kontrol et
IF OBJECT_ID ( 'fncEnCokOynananOyun') IS NOT NULL
	BEGIN
		-- Fonksiyon varsa sil
		DROP FUNCTION fncEnÇokOynananUlke;
	END
GO


CREATE FUNCTION fncEnCokOynananOyun(@UYE_ID INT)
RETURNS INT
AS
BEGIN
    DECLARE @EnCokOynananOyunID INT;

    SELECT TOP 1 
        @EnCokOynananOyunID = os.oyun_ID
    FROM 
        tbluye_oyun_oynar oo
        INNER JOIN tblOyun_seanslar os ON oo.OYUNSEANS_ID = os.OYUNSEANS_ID
    WHERE 
        oo.UYE_ID = @UYE_ID
    GROUP BY 
        os.oyun_ID
    ORDER BY 
        COUNT(*) DESC

    RETURN @EnCokOynananOyunID;
END
GO

SELECT dbo.fncEnCokOynananOyun(1) AS EnCokOynananOyun;




CREATE FUNCTION dbo.fncEnCokVakitGecirilenOyun(@UYE_ID INT)
RETURNS INT
AS
BEGIN
    DECLARE @EnCokVakitGecirilenOyunID INT;

    -- Toplam vakit geçirilen oyunu buluyoruz
    SELECT TOP 1 
        @EnCokVakitGecirilenOyunID = os.oyun_ID
    FROM 
        tbluye_oyun_oynar oo
        INNER JOIN tblOyun_seanslar os ON oo.OYUNSEANS_ID = os.OYUNSEANS_ID
    WHERE 
        oo.UYE_ID = @UYE_ID
    GROUP BY 
        os.oyun_ID
    ORDER BY 
        SUM(DATEDIFF(MINUTE, os.SEANS_BASLANGIC, os.SEANS_BITIS)) DESC;

    RETURN @EnCokVakitGecirilenOyunID;
END;
GO
