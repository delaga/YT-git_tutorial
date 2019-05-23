drop database if exists hnl;
create database hnl default character set utf8;
use hnl;

create table momcad(
id int not null primary key auto_increment,
naziv varchar(22) not null,
mjesto varchar(22) not null
);

create table utakmica(
id int not null primary key auto_increment,
datum datetime not null,
stadion varchar(33),
domacin_momcad_id int not null,
gost_momcad_id int not null,
rezultat varchar(11)
);

alter table utakmica add foreign key (domacin_momcad_id) references momcad(id);
alter table utakmica add foreign key (gost_momcad_id) references momcad(id);

insert into momcad(naziv,mjesto) values('NK Osijek','Osijek'),('HNK Hajduk','Split'),('NK Dinamo','Zagreb');
insert into utakmica(datum,domacin_momcad_id,gost_momcad_id) values ('2019-05-12 17:00:00',1,3),('2019-06-11 15:00:00',3,2);
