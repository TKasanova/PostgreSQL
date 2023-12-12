-- yorum satiri
/*
coglu

*/
--1- database 
CREATE DATABASE deneme;
create database test2;

--2- database silme
drop database deneme;

--3- tablo olustur
CREATE TABLE students(
id CHAR(4),
	NAME VARCHAR(20),
	GRADE REAL ,
	REGISTER_DATE DATE );
	
--4-  mevcud tablodan yeni tablo olusturmak
CREATE TABLE grades AS SELECT NAME,GRADE FROM students;

--5- tabloyu silme
DROP TABLE grades;

--6- tabloya tum fieldleriyle birlikde data ekleme
INSERT INTO students VALUES ('1001','Tahira Kasanova',99.8,'2023-12-11');
INSERT INTO students VALUES ('1002','HAR POTTER', 99 , now());
							 
--7- data okumak/cekme/filtreleme
--a- tablodaki tum kayitlari tum sutunlari okulma
SELECT* FROM students ;

--b- tum kayitlarin bazi fieldlerini okuma
SELECT NAME,GRADE FROM students;

--8- Bazi sutunlata data ekleme
INSERT INTO students (NAME,GRADE) VALUES ('JACK SPARROW', 99.7);
