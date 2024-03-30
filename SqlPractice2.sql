create table hayvanlar(

id int,
isim varchar(20),
yasadigi_bolge varchar(20),
kilosu int
	
);

insert into hayvanlar values(10,'Kaplan','Asya', 300);
insert into hayvanlar values(11,'Aslan','Afrika',280);
insert into hayvanlar values(12,'Penguen','Antartika',30);
insert into hayvanlar values(13,'Zebra','Afrika',220);

--- Tablodaki tum verileri yazdiralim.

select * from hayvanlar;

-- 'ALTER' kullanarak tablodaki sutuna bir ekleme yapalim.

alter table hayvanlar
add column yasam_suresi varchar(4);

select * from hayvanlar;

-- Yeni ekledigimiz sutuna ekleme yapalim.

update hayvanlar 
set yasam_suresi = '20'
where isim ='Aslan'

select * from hayvanlar;


-- Sadece yasam_suresine bir veri girelim.

insert into hayvanlar values(14,'','',null,'20');

-- 'DELETE' kullanarak yasam_suresi 50 olan ve ismi olmayan hayvani silelim.

delete from hayvanlar
where yasam_suresi = '20' and id=14;

select * from hayvanlar;

-- 'UPDATE' kullanarak Kaplan, Penguen ve Zebranin yasam_suresi verilerini guncelleyelim. 

update hayvanlar 
set yasam_suresi = 25 
where isim ='Kaplan'

update hayvanlar
set yasam_suresi = 15 
where isim ='Penguen'

update hayvanlar 
set yasam_suresi = 20 
where isim ='Zebra'

/*Tabloyu yazdiriyoruz.*/ 
select isim,yasam_suresi  from hayvanlar


-- Başka Bir Tablo Oluşturalım.

create table hasta_bilgi(
doktor_adi varchar(20),
uzmanlik_alani varchar(20),
doktor_yasi int

); 

insert into hasta_bilgi values('Ahmet Kurnaz', 'Goz Doktoru', 32)
insert into hasta_bilgi values('Selin Korkmaz', 'Kalp Doktoru', 27)
insert into hasta_bilgi values('Yasin Balci', 'Ortapedi Doktoru', 42)
insert into hasta_bilgi values('Mert Bozkir', 'KBB Doktoru', 49)
insert into hasta_bilgi values('Leyla Guven', 'Fizyoterapi Doktoru', 26)

select * from hasta_bilgi

-- 'ALTER' komudu ile tablomuzun adini degistirdik.

Alter table hasta_bilgi rename to doktor_bilgi

-- 'ALTER' komudu ile tabloma sutun eklemek istiyorum ve bunu yazdiralim.

alter table doktor_bilgi add column hastane_bilgi varchar(20)
select * from doktor_bilgi

-- Artik yeni bir satira sahip oldugumuz icin hastane_bilgi sutununu dolduralim (guncelleyelim).

update doktor_bilgi
set hastane_bilgi ='Istanbul Hastanesi'
where doktor_adi ='Selin Korkmaz'

update doktor_bilgi set hastane_bilgi ='Ankara Hastanesi' where doktor_adi='Yasin Balci'
update doktor_bilgi set hastane_bilgi ='Eskisehir Hastanesi' where doktor_adi='Ahmet Kurnaz'
update doktor_bilgi set hastane_bilgi ='Antalya Hastanesi' where doktor_adi='Mert Bozkir'
update doktor_bilgi set hastane_bilgi ='Eskisehir Hastanesi' where doktor_adi='Leyla Guven'

-- SORU : Eskisehir hastanesinde hangi doktorlar calismaktadir.

select * from doktor_bilgi where hastane_bilgi = 'Eskisehir Hastanesi'
select * from doktor_bilgi

-- SORU : Eskisehir Hastanesinde calisan 30 yas ustundekileri yazdiralim.

select * from doktor_bilgi where hastane_bilgi ='Eskisehir Hastanesi' and doktor_yasi>30


