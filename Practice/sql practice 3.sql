drop table memurlar;
create table memurlar(
memur_id int PRIMARY key,
memur_isim VARCHAR(50),
memur_maas int
);
Insert into memurlar VALUES(1,'çiğdem',100000);
INSERT into memurlar VALUES(2,'Duygu',150000);
Insert into memurlar values(3,'Aykut',110000);
INSERT into memurlar values(4,'Sıla');
select * from memurlar;

--sila hanima maas degeri atamasi yapalim
update memurlar set memur_maas=125000 where memur_isim='Sıla';

--En dusuk veya en yuksek maas degerlerinin oldugu kayıtları listeleyin
select * from memurlar where memur_maas =(select max(memur_maas) from memurlar) or memur_maas=(select min(memur_maas)from memurlar);

--aykut bey'in maasini en yuksek maasa esitleyelim
update memurlar set memur_maas=(select max(memur_maas)from memurlar)where memur_isim='Aykut';

