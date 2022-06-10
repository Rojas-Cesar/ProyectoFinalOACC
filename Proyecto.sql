show databases;
create database if not exists oacc2809;
show databases;
use oacc2809;
show tables;

-- CRUD OPERATIONS

create table if not exists alumnos(
	id_alumno int not null auto_increment,
    nombre varchar(50) not null,
    ap_paterno varchar(50) not null,
    ap_materno varchar(50) null,
    fecha date null comment 'Fecha de nacimiento',
    nacionalidad varchar(30) default 'Mexicana',
    primary key(id_alumno)
);

show tables;
show columns from alumnos;

insert into alumnos values('570110', 'GABRIELA', 'MISTRAL', 'ALCAYAGA', '2007-01-10', 'ESTADOUNIDENSE');
insert into alumnos values('800710', 'MARIO', 'ROJO', 'CHAVEZ', '2007-11-11', 'ESTADOUNIDENSE');
insert into alumnos values('952001', 'REGINA', 'REYES', 'ROSA', '2007-11-11', 'ESTADOUNIDENSE');


select * from alumnos;
