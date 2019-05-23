drop database if exists organizacija;
create database organizacija default character set utf8;
use organizacija;

create table odjel(
id int not null primary key auto_increment,
naziv varchar(22) not null,
voditelj_zaposlenik_id int not null
);

create table zaposlenik(
id int not null primary key auto_increment,
ime varchar(22) not null,
prezime varchar(22) not null,
odjel_id int not null,
nadredjeni_zaposlenik_id int not null
);

alter table odjel add foreign key (voditelj_zaposlenik_id) references zaposlenik(id);
alter table zaposlenik add foreign key (odjel_id) references odjel(id);
alter table zaposlenik add foreign key (nadredjeni_zaposlenik_id) references zaposlenik(id);

