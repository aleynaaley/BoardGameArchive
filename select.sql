USE boardgame

  -- SELECT 1: tüm üyelerin adı, soyadı ülkesi, sahip olduğu expansion sayısı, kaç oyuna puan vermiş, 
  -- ortalama kaç puan vermiş, kaç oyun oturumu oluşturmuş, kaç defa ticket to ride isimli oyunu oynamış gösteren sorgu
SELECT 
    uye.AD_Üye AS 'Üye Adı',
    uye.SOYAD_Üye AS 'Üye Soyadı',
    ulke.ULKE_AD AS 'Ülke',
    COUNT(DISTINCT CASE WHEN yt.Ad_Yayinturu = 'Ana Oyun' THEN y.YAYIN_ID END) AS 'Sahip Olduğu Ana Oyun Sayısı',
	  COUNT(DISTINCT CASE WHEN yt.Ad_Yayinturu = 'Expansion' THEN y.YAYIN_ID END) AS 'Sahip Olduğu Expansion Sayısı',
    COUNT(DISTINCT opv.OYUN) AS 'Kaç Oyuna Puan Vermiş',
    AVG(CAST(opv.OYUN AS FLOAT)) AS 'Ortalama Puan',
    COUNT(DISTINCT os.OYUNSEANS_ID) AS 'Oluşturduğu Oyun Oturumu Sayısı',
    COUNT(DISTINCT CASE WHEN oyun.OYUN_ASILAD = 'Ticket to Ride' THEN uoo.OYNAR_ID END) AS 'Ticket to Ride Oynama Sayısı'

FROM tblUye uye

LEFT JOIN tblUlke ulke ON uye.ULKE_ID = ulke.ULKE_ID
LEFT JOIN tblYayin y ON uye.UYE_ID = y.UYE_ID
LEFT JOIN tblYayinturu yt ON y.YAYINTURU_ID = yt.ID_Yayinturu
LEFT JOIN tblOyuna_puan_verir opv ON uye.UYE_ID = opv.KOLEKSIYON
LEFT JOIN tblOyun_seanslar os ON uye.UYE_ID = os.OLUSTURAN_UYE_ID
LEFT JOIN tbluye_oyun_oynar uoo ON uye.UYE_ID = uoo.UYE_ID
LEFT JOIN tblOyun oyun ON uoo.OYUNSEANS_ID = os.OYUNSEANS_ID AND os.oyun_ID = oyun.OYUN_ID

GROUP BY uye.AD_Üye, uye.SOYAD_Üye, ulke.ULKE_AD;
