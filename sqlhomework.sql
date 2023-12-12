-- Tablo Oluşturma
CREATE TABLE filmler (
    film_isim varchar(50),
    tur varchar(20), 
    sure real, 
    imdb numeric(2,1)
);

-- Data Ekleme - Filmler Tablosu
INSERT INTO filmler (film_isim, tur, sure, imdb) VALUES
('Film1', 'Tur1', 120.5, 8.5),
('Film2', 'Tur2', 95.2, 7.2),
('Film3', 'Tur3', 150.0, 6.7);

-- Ogretmenler Tablosu Oluşturma
CREATE TABLE ogretmenler (
    kimlik_no bigint,
    isim varchar(50),
    brans varchar(30),
    cinsiyet varchar(10)
);

-- Data Ekleme - Ogretmenler Tablosu
INSERT INTO ogretmenler (kimlik_no, isim, brans, cinsiyet) VALUES
(234431223, 'Ayse Guler', 'Matematik', 'kadin'),
(234431224, 'Ali Guler', 'Fizik', 'erkek');

-- Var Olan Tablodan Yeni Tablo Oluşturma
CREATE TABLE film_imdb AS
SELECT film_isim, imdb FROM filmler;

-- Field'ları Olan Kayıt Ekleme - Filmler Tablosu
INSERT INTO filmler (film_isim, imdb) VALUES
('Ayla', 9.87),
('Shrek', 9.83);

-- Field'ları Olan Kayıt Ekleme - Ogretmenler Tablosu
INSERT INTO ogretmenler (kimlik_no, isim) VALUES
(567597624, 'Veli Guler');