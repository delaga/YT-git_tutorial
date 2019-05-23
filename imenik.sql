/*
C:\Users\mirza\Desktop\EDUNOVA\SQLexer
*/


drop database if exists imenik;
create database imenik default character set utf8;
use imenik;

create table vrsta(
id int not null primary key auto_increment,
naziv varchar(22) not null
);

create table kontakt(
id int not null primary key auto_increment,
ime varchar(22) not null,
prezime varchar(22)not null,
broj varchar(22) not null,
vrsta_id int not null
);

alter table kontakt add foreign key (vrsta_id) references vrsta(id);

insert into vrsta(naziv) values('kučni'),('poslovni'),('privatni_mob'),('poslovni_mob'),('e-pošta');

insert into kontakt(ime,prezime,broj,vrsta_id) values('Pero','Peric','098 123 123',3),('Jozo','Jozić','jj@jj.hr',5),('Ivo','Ivić','031212212',2);

select * from kontakt;
