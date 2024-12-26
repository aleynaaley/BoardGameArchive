

use BOARDGAMEARCHIEVE

IF OBJECT_ID('sp_OyunEkleme') IS NOT NULL
	BEGIN
	    DROP PROCEDURE sp_OyunEkleme;
	END
GO

CREATE PROCEDURE sp_OyunEkleme
    @uyeId INT,
    @oyunId INT
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Kullanıcı ve oyunun varlığını kontrol et
        IF NOT EXISTS (SELECT 1 FROM tblUye WHERE UYE_ID = @uyeId)
            THROW 50001, 'Geçersiz kullanıcı ID', 1;

        IF NOT EXISTS (SELECT 1 FROM tbloyun WHERE OYUN_ID = @oyunId)
            THROW 50002, 'Geçersiz oyun ID', 1;

        -- Oyunun zaten koleksiyonda olup olmadığını kontrol et
        IF EXISTS (SELECT 1 FROM tblKoleksiyon WHERE UYE_ID = @uyeId AND OYUN_ID = @oyunId)
            THROW 50003, 'Oyun zaten koleksiyonda', 1;

        -- Üyelik türünü ve koleksiyondaki oyun sayısını bul
        DECLARE @durum NVARCHAR(20);
        DECLARE @sahipOlduguOyunSayısı INT;

        SELECT @durum = Durum
        FROM tblUye
        WHERE UYE_ID = @uyeId;

        SELECT @sahipOlduguOyunSayısı = COUNT(*)
        FROM tblKoleksiyon
        WHERE UYE_ID = @uyeId;

        -- kullanıcı türü ücretsizse ve 11. oyunu eklemek istiyorsa hata mesajı dönecek
        IF @durum = 'Ücretsiz' AND @sahipOlduguOyunSayısı >= 10
            THROW 50004, 'Ücretsiz üyelik için koleksiyon sınırı 10 oyundur.', 1;

        -- Oyunu koleksiyona ekle
        INSERT INTO tblKoleksiyon (KOLEKSIYON_AD, ODENEN_UCRET, PARABIRIMI_ID, UYE_ID, OYUN_ID)
		VALUES ('İstek Listesi', '0', 1, @uyeId, @oyunId);
		

        -- Kullanıcının koleksiyon güncelleme tarihini güncelle
        UPDATE tblUye
		SET Son_Profil_Güncelleme_Tarihi = CONVERT(VARCHAR(20), GETDATE(), 120)
		WHERE UYE_ID = @uyeId;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Hata durumunda rollback yap
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        -- Hata bilgileri
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;


-- 1 ID'li kullanıcının koleksiyonuna 5 ID'li oyunu ekledik
DECLARE @x INT = 1; -- Kullanıcı ID'si
DECLARE @y INT = 5; -- Oyun ID'si

EXEC sp_OyunEkleme @uyeId = @x, @oyunId = @y;


SELECT * FROM tblKoleksiyon
WHERE UYE_ID = 1





-- geçersiz kullanıcı ekleme
DECLARE @A INT = 999; -- Kullanıcı ID'si
DECLARE @B INT = 5; -- Oyun ID'si

EXEC sp_OyunEkleme @uyeId = @A, @oyunId = @B;




-- geçersiz oyun ekleme
DECLARE @C INT = 1; -- Kullanıcı ID'si
DECLARE @D INT = 25; -- Oyun ID'si

EXEC sp_OyunEkleme @uyeId = @C, @oyunId = @D;



-- oyunu ikinci kez ekleyemez
DECLARE @E INT = 1; -- Kullanıcı ID'si
DECLARE @F INT = 5; -- Oyun ID'si

EXEC sp_OyunEkleme @uyeId = @E, @oyunId = @F;



-- ücretiz üyeler 10dan fazla oyun ekleyemez
DECLARE @x INT = 9; -- Ücretsiz Kullanıcı ID'si
DECLARE @y INT = 1; -- Başlangıç Oyun ID'si 

WHILE @y <= 12
BEGIN
    BEGIN TRY
        EXEC sp_OyunEkleme @uyeId = @x, @oyunId = @y;
    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE();
    END CATCH;
    
    SET @y = @y + 1;
END




