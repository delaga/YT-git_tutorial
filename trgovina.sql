drop database if exists trgovina;
create database trgovina default character set utf8;
use trgovina;

create table racun(
id int not null primary key auto_increment,
datum datetime not null,
kupac varchar(33)
);

create table proizvod(
id int not null primary key auto_increment,
naziv varchar(33) not null,
cijena decimal(18,2)
);

create table stavka(
racun_id int not null,
proizvod_id  int not null,
kolicina decimal(18,3)
);

alter table stavka add foreign key (racun_id) references racun(id);
alter table stavka add foreign key (proizvod_id) references proizvod(id);

 