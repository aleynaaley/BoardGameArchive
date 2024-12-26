

IF OBJECT_ID('trg_KoleksiyonRozetVeProfilGuncelleme') IS NOT NULL
	BEGIN
	    DROP TRIGGER trg_KoleksiyonRozetVeProfilGuncelleme;
	END
GO



CREATE TABLE tblProfilGuncelleme (
    PROFIL_ID INT IDENTITY(1,1),
    UYE_ID INT,
    ToplamOyunSayisi INT,
    SonGuncellemeTarihi DATETIME
);


CREATE TRIGGER trg_KoleksiyonRozetVeProfilGuncelleme
ON tblKoleksiyon
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Değişkenler
    DECLARE @uyeId INT;
    DECLARE @toplamOyunSayisi INT;

    BEGIN TRANSACTION;

    BEGIN TRY
      
        -- Kullanıcının toplam oyun sayısını hesapla
        SELECT @toplamOyunSayisi = COUNT(*)
        FROM tblKoleksiyon
        WHERE UYE_ID = @uyeId;

        -- Kullanıcının oyun sayısına göre işlem kontrolü
        IF @toplamOyunSayisi > 15
            THROW 50008, 'Koleksiyona eklenen maksimum oyun sınırı aşıldı. İşlem iptal edildi.', 1;

        -- Eski rozetleri sil
        DELETE FROM tblRozet
        WHERE UYE_ID = @uyeId;

        -- Yeni rozet ekle
        IF @toplamOyunSayisi >= 12
            INSERT INTO tblRozet (ROZET_AD, UYE_ID)
            VALUES ('Efsane Koleksiyoncu', @uyeId);
        ELSE IF @toplamOyunSayisi >= 6
            INSERT INTO tblRozet (ROZET_AD, UYE_ID)
            VALUES ('Usta Koleksiyoncu', @uyeId);
        ELSE IF @toplamOyunSayisi >= 3
            INSERT INTO tblRozet (ROZET_AD, UYE_ID)
            VALUES ('Amatör Koleksiyoncu', @uyeId);

        -- tblProfilGuncelleme tablosunu güncelle
        IF EXISTS (SELECT 1 FROM tblProfilGuncelleme WHERE UYE_ID = @uyeId)
        BEGIN
            UPDATE tblProfilGuncelleme
            SET ToplamOyunSayisi = @toplamOyunSayisi,
                SonGuncellemeTarihi = GETDATE()
            WHERE UYE_ID = @uyeId;
        END
        ELSE
        BEGIN
            INSERT INTO tblProfilGuncelleme (UYE_ID, ToplamOyunSayisi, SonGuncellemeTarihi)
            VALUES (@uyeId, @toplamOyunSayisi, GETDATE());
        END;

        
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Hata durumunda rollback yap
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        -- Hata bilgilerini döndür
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH;
END;






-- Sonuçları kontrol et
SELECT * FROM tblRozet; -- Rozet eklendi mi? 
SELECT * FROM tblProfilGuncelleme; -- Profil güncellendi mi?



--- ID si 3 olan oyuncuya 4 oyun eklendi.
BEGIN TRY
    DECLARE @i INT = 1;
    WHILE @i <= 4
    BEGIN
        EXEC sp_OyunEkleme @uyeId = 3, @oyunId = @i;
        SET @i = @i + 1;
    END
END TRY
BEGIN CATCH
    SELECT ERROR_MESSAGE() AS HataMesaji;
END CATCH;


-- Uye Id'si 3 olan oyuncuya Amatör Koleksiyoncu Rozeti ekelenmeli.
SELECT * FROM tblRozet; -- Rozet eklendi mi? 
SELECT * FROM tblProfilGuncelleme; -- Profil güncellendi mi?




--- ID si 4 olan oyuncuya 7 oyun eklendi.
BEGIN TRY
    DECLARE @i INT = 1;
    WHILE @i <= 7
    BEGIN
        EXEC sp_OyunEkleme @uyeId = 2, @oyunId = @i;
        SET @i = @i + 1;
    END
END TRY
BEGIN CATCH
    SELECT ERROR_MESSAGE() AS HataMesaji;
END CATCH;




-- Uye Id'si 4 olan oyuncuya Usta Koleksiyoncu Rozeti ekelenmeli.
SELECT * FROM tblRozet; -- Rozet eklendi mi? 
SELECT * FROM tblProfilGuncelleme; -- Profil güncellendi mi?



--- ID si 8 olan oyuncuya 12 oyun eklendi.
BEGIN TRY
    DECLARE @i INT = 1;
    WHILE @i <= 12
    BEGIN
        EXEC sp_OyunEkleme @uyeId = 2, @oyunId = @i;
        SET @i = @i + 1;
    END
END TRY
BEGIN CATCH
    SELECT ERROR_MESSAGE() AS HataMesaji;
END CATCH;


-- Uye Id'si 8 olan oyuncuya Efsane Koleksiyoncu Rozeti ekelenmeli.
SELECT * FROM tblRozet; -- Rozet eklendi mi? 
SELECT * FROM tblProfilGuncelleme; -- Profil güncellendi mi?






-- Koleksiyona eklenebilcek maksimum oyun sayısı aşıldı. Hata mesajı geldi mi?
BEGIN TRY
    DECLARE @i INT = 1;
    WHILE @i <= 20
    BEGIN
        EXEC sp_OyunEkleme @uyeId =9, @oyunId = @i;
        SET @i = @i + 1;
    END
END TRY
BEGIN CATCH
    SELECT ERROR_MESSAGE() AS HataMesaji;
END CATCH;
















