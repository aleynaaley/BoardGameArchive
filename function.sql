use boardgame

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


CREATE FUNCTION fncEnCokOynananOyun(@UYE_ID INT)
RETURNS INT
AS
BEGIN
    DECLARE @EnCokOynananOyunID INT;

    SELECT TOP 1 
        @EnCokOynananOyunID = os.oyun_ID
    FROM 
    (
        SELECT 
            os.oyun_ID, 
            COUNT(*) AS OynanmaSayisi
        FROM 
            tbluye_oyun_oynar oo
            INNER JOIN tblOyun_seanslar os ON oo.OYUNSEANS_ID = os.OYUNSEANS_ID
        WHERE 
            oo.UYE_ID = @UYE_ID
        GROUP BY 
            os.oyun_ID
    ) AS Oyunlar
    ORDER BY 
        Oyunlar.OynanmaSayisi DESC, Oyunlar.oyun_ID; -- İlk oynanma sayısına, sonra oyun_ID'ye göre sırala

    RETURN @EnCokOynananOyunID;
END
GO
