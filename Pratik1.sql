-- bu sekilde yorum satırı yapabiliriz.

/*
veya bu şekilde
uzun yorumlarımızı
yazabiliriz.
*/

/*
SQL KOMUTLARI GRUPLARA AYRILIR :
-
1. (Data Definition Language DDL) Veri Tanimlama Dili 
CREATE: Tablo oluşturur. 
ALTER: Tabloyu günceller. 
DROP: Tabloyu siler.

2. (Data Manipulation Language - DML) Veri Kullanma Dili 
INSERT: Tabloya veri ekler
UPDATE: Tablodaki verileri günceller 
DELETE:Tablodaki verileri siler

3. (Data Query Language - DQL) Veri Sorgulama Dili 
SELECT: Tablodaki verileri listeler.
*/

-- Talebeler isminde tablo olusturalim.

create table talebeler(
ogrenci_tc char(11), 		-- Uzunlugu belli olan String veriler icin 'char' data turu kullanilir
ogrenci_isim varchar(20), 	-- Uzunlugu belli olmayan String veriler icin 'varchar' data turu kullanilir.
not_ort real,				-- Ondalikli sayilar icin 'real' data turu kullanilir.
kayit_tarihi date			-- Tarih icin 'date' data turu kullanilir.
);



-- talebeler tablosundaki verileri listeleyelim.

select * from talebeler; 	-- Yildiz tum sutunlardaki verileri listeleler

-- talebeler tablosuna veri ekleyelim.

insert into talebeler values('12345678912','Kayra',90.5,'2023-02-15');
insert into talebeler values('12348912547','Mustafa',90.6,'2024-01-22');
insert into talebeler values('85463409122','Ada',89.3,'2024-02-05');

-- tekrardan talebeler tablosundaki verileri listeleyelim.

select * from talebeler;

-- talebeler tablosunu silelim.

drop table talebeler;

-- SORU : Ogretmenler isminde tablo olusturalim.

create table ogretmenler(
ogretmen_ismi varchar(20),  -- Uzunlugu belli olmayan String datalar icin 'varchar' data turu kullanilir.
bransi varchar(25),
mezuniyet_derecesi varchar(25),
telefon_numarasi char(11),  -- Uzunlugu belli olan String datalar icin 'char' data turu kullanilir.
maas int
);

-- SORU : Ogretmenler tablosuna veri girisi yapalim.

insert into ogretmenler values('Kayra','Turkce','Lisans',12345687911,15000);
insert into ogretmenler values('Gokan','Matematik','On Lisans',852456963327,25000);
insert into ogretmenler values('Ilayda','Ingilizce','Yuksek Lisans',14785236980,23000);


-- SORU : Ogretmenler tablosundaki verileri listeleyelim.

select * from ogretmenler;

-- SORU : Ogretmenler tablosunu silelim.

drop table ogretmenler;



/*
=============================================SELECT=============================================

select * from tablo_adi ==> * Tüm sutunlardaki verileri listeler


DQL Grubundan ==> SELECT komutu ile 'Tablodaki İstedigimiz Sütundaki Verileri Listeleyebiliriz'

Syntax:
-------


select sutun_adi from tablo_adi; ==> Sadece belirtilen sutundaki verileri listeler

================================================================================================
*/


create table ogrenciler(

id int,
isim varchar(40),
adres varchar(100),
sinav_notu int
);

insert into ogrenciler values(120,'Ali Can', 'Ankara',75);
insert into ogrenciler values(121,'Veli Mert', 'Trabzon',85);
insert into ogrenciler values(122,'Ayse Tan', 'Bursa',65);
insert into ogrenciler values(123,'Derya Soylu', 'Istanbul',95);
insert into ogrenciler values(124,'Yavuz Bal', 'Ankara',85);
insert into ogrenciler values(125,'Emre Gul', 'Hatay',90);
insert into ogrenciler values(126,'Harun Resit', 'Isparta',100);

-- SORU1 : Ogrenciler tablosundaki tum sutunlarindaki verileri listeleyin.

select * from ogrenciler;

-- SORU2 : Ogrenciler tablosundaki 'isim' sutunundaki verileri listeleyin.

select isim from ogrenciler;

-- SORU3 : Ogrenciler tablosundaki 'adres' sutunundaki verileri listeleyin.

select adres from ogrenciler;

-- SORU4 : Ogrenciler tablosundaki 'sinav_notu' sutunundaki verileri listeleyin.

select sinav_notu from ogrenciler;

-- SORU5 : Ogrenciler tablosundaki 'isim' ve 'sinav_notu' sutunlarindaki verileri listeleyin.

select isim, sinav_notu from ogrenciler;

/*
	where ==> SART belirtmemiz gerektiginde kullanilir.
*/

-- SORU6 : Ogrenciler tablosundaki sinav_notu 80'den yuksek olan ogrencilerin tum bilgilerini listeleyin.

select * from ogrenciler where sinav_notu>80

-- SORU7 : Ogrenciler tablosundaki adresi 'Ankara' olan ogrencilerin tum bilgilerini listeleyin.

select * from ogrenciler where adres='Ankara';

-- SORU8 :Ogrenciler tablosundaki sinav_notu 85 ve adresi 'Ankara' olan ogrencinin ismini listeleyin.

select isim from ogrenciler where sinav_notu=85 and adres='Ankara';

-- SORU9 : Ogrenciler tablosundaki sinav notu 65 veya 85 olan ogrencilerin tum bilgilerini listeleyin.

select * from ogrenciler where sinav_notu=85 or sinav_notu=65;

-- in ==> birden fazla ifade ile tanimlayabilecegimiz durumlari 'in' komudu ile yazabiliriz.

-- 2. YOL :  

select * from ogrenciler where sinav_notu in (65,85);



