create database notes_db;

use notes_db;

create table user(
id int not null auto_increment,
name varchar(30) not null,
email varchar(50) unique not null,
primary key(id));

create table category(
id int not null auto_increment,
name varchar(30) not null,
primary key (id));

create table notes (
id int not null auto_increment,
title varchar(100) not null,
create_date date not null,
update_date date null,
description text not null,
delete_note tinyint null,
id_user int not null,
id_category int not null,
primary key(id),
foreign key (id_user) references user(id),
foreign key (id_category) references category(id));

insert into user values (1, "nicolas", "nico@mail.com"),(2, "julia", "julia@mail.com"),(3, "thian", "thian@mail.com"),(4, "rocio", "rocio@mail.com");

insert into category values (1, "musica"),(2, "peliculas"),(3, "deportes"),(4, "entretenimiento");

insert into notes values (1, "lorem 1", "2016-07-04 03:00:00", null," lorem hbachbh hcbhdbc hdc<hzdchdhc hbcdhbdchdc hcdbdhbcdhc bhcdbchdbcd", null, 1, 2),(2, "lorem 2", "2016-07-04 03:00:00", null," lorem hbachbh hcbhdbc hdc<hzdchdhc hbcdhbdchdc hcdbdhbcdhc bhcdbchdbcd", null, 2, 1),(3, "lorem 3", "2016-07-04 03:00:00", null," lorem hbachbh hcbhdbc hdc<hzdchdhc hbcdhbdchdc hcdbdhbcdhc bhcdbchdbcd", null, 3, 4),(4, "lorem 4", "2016-07-04 03:00:00", null," lorem hbachbh hcbhdbc hdc<hzdchdhc hbcdhbdchdc hcdbdhbcdhc bhcdbchdbcd", null, 4, 3),(5, "lorem 5", "2016-07-04 03:00:00", null," lorem hbachbh hcbhdbc hdc<hzdchdhc hbcdhbdchdc hcdbdhbcdhc bhcdbchdbcd", null, 1, 4),(6, "lorem 6", "2016-07-04 03:00:00", null," lorem hbachbh hcbhdbc hdc<hzdchdhc hbcdhbdchdc hcdbdhbcdhc bhcdbchdbcd", null, 3, 1),(7, "lorem 7", "2016-07-04 03:00:00", null," lorem hbachbh hcbhdbc hdc<hzdchdhc hbcdhbdchdc hcdbdhbcdhc bhcdbchdbcd", null, 4, 4),(8, "lorem 8", "2016-07-04 03:00:00", null," lorem hbachbh hcbhdbc hdc<hzdchdhc hbcdhbdchdc hcdbdhbcdhc bhcdbchdbcd", null, 2, 1),(9, "lorem 9", "2016-07-04 03:00:00", null," lorem hbachbh hcbhdbc hdc<hzdchdhc hbcdhbdchdc hcdbdhbcdhc bhcdbchdbcd", null, 3, 2),(10, "lorem 10", "2016-07-04 03:00:00", null," lorem hbachbh hcbhdbc hdc<hzdchdhc hbcdhbdchdc hcdbdhbcdhc bhcdbchdbcd", null, 1, 1);
