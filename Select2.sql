-- sadece sütün isimlerini ve şeklini değiştirdim cümle aynı

SELECT 
    tblUye.AD_Üye AS Uye_Adi, 
    tblUye.SOYAD_Üye AS Uye_Soyadi, 
    tblUlke.ULKE_AD AS Ulke_Adi, 
    Sahip_Oldugu_Ana_Oyun_Sayisi,
    Kac_Oyuna_Puan_Vermis

FROM tblUye

LEFT JOIN tblUlke ON tblUye.ULKE_ID = tblUlke.ULKE_ID
LEFT JOIN ( SELECT UYE_ID, COUNT(KOLEKSIYON_ID) AS Sahip_Oldugu_Ana_Oyun_Sayisi
		    FROM tblKoleksiyon
            GROUP BY UYE_ID
		  ) AS KoleksiyonSayisi ON tblUye.UYE_ID = KoleksiyonSayisi.UYE_ID
LEFT JOIN ( SELECT  tblKoleksiyon.UYE_ID, COUNT(DISTINCT tblOyuna_puan_verir.ID) AS Kac_Oyuna_Puan_Vermis
            FROM tblKoleksiyon
			LEFT JOIN tblOyuna_puan_verir ON tblKoleksiyon.KOLEKSIYON_ID = tblOyuna_puan_verir.KOLEKSIYON
			GROUP BY tblKoleksiyon.UYE_ID
		  ) AS PuanVermeSayisi ON tblUye.UYE_ID = PuanVermeSayisi.UYE_ID;









SELECT 
    
    tblUye.AD_Üye, 
    tblUye.SOYAD_Üye, 
    tblUlke.ULKE_AD, 
    Oyun_Sayısı,
    Puan_Verme_Sayısı
FROM 
    tblUye
LEFT JOIN 
    tblUlke ON tblUye.ULKE_ID = tblUlke.ULKE_ID
LEFT JOIN (
    SELECT 
        UYE_ID,
        COUNT(KOLEKSIYON_ID) AS Oyun_Sayısı
    FROM 
        tblKoleksiyon
    GROUP BY 
        UYE_ID
) AS KoleksiyonSayisi ON tblUye.UYE_ID = KoleksiyonSayisi.UYE_ID
LEFT JOIN (
    SELECT 
        tblKoleksiyon.UYE_ID,
        COUNT(DISTINCT tblOyuna_puan_verir.ID) AS Puan_Verme_Sayısı
    FROM 
        tblKoleksiyon
    LEFT JOIN 
        tblOyuna_puan_verir ON tblKoleksiyon.KOLEKSIYON_ID = tblOyuna_puan_verir.KOLEKSIYON
    GROUP BY 
        tblKoleksiyon.UYE_ID
) AS PuanVermeSayisi ON tblUye.UYE_ID = PuanVermeSayisi.UYE_ID;





-------------aleyna bunu denedim emin değilim 

SELECT 
    tblUye.AD_Üye, 
    tblUye.SOYAD_Üye, 
    tblUlke.ULKE_AD, 
    Sahip_Oldugu_Ana_Oyun_Sayisi,
    Kac_Oyuna_Puan_Vermis,
    Ortalama_Puan,
    Oyun_Seansi_Sayisi,
    Ticket_to_Ride_Oynama_Sayisi

FROM tblUye

LEFT JOIN tblUlke ON tblUye.ULKE_ID = tblUlke.ULKE_ID
LEFT JOIN ( SELECT UYE_ID, COUNT(KOLEKSIYON_ID) AS Sahip_Oldugu_Ana_Oyun_Sayisi
		    FROM tblKoleksiyon
            GROUP BY UYE_ID
		  ) AS KoleksiyonSayisi ON tblUye.UYE_ID = KoleksiyonSayisi.UYE_ID
LEFT JOIN ( SELECT  tblKoleksiyon.UYE_ID, COUNT(DISTINCT tblOyuna_puan_verir.ID) AS Kac_Oyuna_Puan_Vermis, AVG(tblOyuna_puan_verir.PUAN) AS Ortalama_Puan
            FROM tblKoleksiyon
			LEFT JOIN tblOyuna_puan_verir ON tblKoleksiyon.KOLEKSIYON_ID = tblOyuna_puan_verir.KOLEKSIYON
			GROUP BY tblKoleksiyon.UYE_ID
		  ) AS PuanVermeSayisi ON tblUye.UYE_ID = PuanVermeSayisi.UYE_ID
LEFT JOIN ( SELECT  tbluye_oyun_oynar.UYE_ID, COUNT(tbluye_oyun_oynar.OYNAR_ID) AS Oyun_Seansi_Sayisi
            FROM tbluye_oyun_oynar
			GROUP BY tbluye_oyun_oynar.UYE_ID
		  ) AS OyunSeansiSayisi ON tblUye.UYE_ID = OyunSeansiSayisi.UYE_ID
LEFT JOIN ( SELECT  tbluye_oyun_oynar.UYE_ID, COUNT(tbluye_oyun_oynar.OYNAR_ID) AS Ticket_to_Ride_Oynama_Sayisi
            FROM tbluye_oyun_oynar
			INNER JOIN tbloyun ON tbluye_oyun_oynar.OYUNSEANS_ID = tbloyun.OYUN_ID
			WHERE tbloyun.OYUN_ASILAD = 'Ticket to Ride'
			GROUP BY tbluye_oyun_oynar.UYE_ID
		  ) AS TicketToRideOynamaSayisi ON tblUye.UYE_ID = TicketToRideOynamaSayisi.UYE_ID;

