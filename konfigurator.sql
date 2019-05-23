/*
C:\Users\mirza\Desktop\EDUNOVA\SQLexer\konfigurator.sql
*/

drop database if exists konfigurator;
create database konfigurator default character set utf8;
use konfigurator;

create table konfa(
id int not null primary key auto_increment,
naziv varchar(22) not null,
opis text,
cijena decimal(18,2)
);

create table proizvodjac(
id int not null primary key auto_increment,
naziv varchar(22) not null,
zemlja varchar(22)
);

create table komponenta(
id int not null primary key auto_increment,
naziv varchar(22) not null,
opis text,
proizvodjac_id int not null
);

create table dio(
konfa_id int not null,
komponenta_id int not null
);

alter table komponenta add foreign key (proizvodjac_id) references proizvodjac(id);
alter table dio add foreign key (konfa_id) references konfa(id);
alter table dio add foreign key (komponenta_id) references komponenta(id);

insert into konfa(naziv) values('Home'),('Office'),('Gamer');
insert into proizvodjac(naziv) values('Intel'),('AMD'),('WD'),('gForce'),('Kingston');
insert into komponenta(naziv,proizvodjac_id) values('CPU',1),('CPU',2),('GPU',2),('GPU',4),('HDD',3),('RAM',5);
insert into dio(konfa_id,komponenta_id) values(1,2),(1,3),(1,5),(2,1),(2,6),(2,4),(3,1),(3,4),(3,5),(3,6);