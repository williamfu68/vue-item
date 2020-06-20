create database db_vueitem charset utf8mb4;

create table swipe(
    id int auto_increment primary key,
    pic varchar(100)
);
insert into swipe (pic) values ('slideShow_01.jpg');
insert into swipe (pic) values ('slideShow_02.jpg');
insert into swipe (pic) values ('slideShow_03.jpg');