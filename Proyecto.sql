-- CRUD OPERATIONS

show databases;
create database if not exists oacc2809;
show databases;
use oacc2809;
show tables;

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

-- C -> CREATE
insert into alumnos values('570110', 'GABRIELA', 'MISTRAL', 'ALCAYAGA', '2007-01-01', 'Estadounidense');
insert into alumnos values('800710', 'MARIO', 'ROJO', 'CHAVEZ', '2007-11-11', 'Francesa');
insert into alumnos values('952001', 'REGINA', 'REYES', 'ROSA', '2007-12-12', 'Cubana');
insert into alumnos values('829892', 'PABLO', 'PEREZ', 'PEREZ', '2007-09-09', 'Canadiense');
insert into alumnos values('293621', 'JORGE', 'JUSTO', 'JUSTO', '2007-08-08', 'Mexicana');
insert into alumnos values('672927', 'ROGELIO', 'RAMOS', 'ROMAN', '2007-07-07', 'DF');
insert into alumnos values('102938', '', 'ROJAS', 'SALAZAR', '2007-06-06', 'Mexicana');
insert into alumnos values('67584', 'JACOBO', 'LOPEZ', 'GOMEZ', '2007-05-05', 'Mexicana');

-- R -> READ
select * from alumnos;

select nombre NOMBRE, nacionalidad PAIS
from alumnos
where nacionalidad <> 'Mexicana';

select id_alumno ID, nombre NOMBRE, nacionalidad PAIS
from alumnos
where nombre is null
or nombre = '';

select count(*) EXTRANJEROS
from alumnos
where nacionalidad not in ('Mexicana');

-- U -> UPDATE
update alumnos set nacionalidad = 'Mexicana'
where nacionalidad = 'DF';

update alumnos set nombre = trim(nombre);

-- D -> DELETE
delete from alumnos where trim(nombre) = '';

delete from alumnos where length(id_alumno) <> 6;

-- CRUD
-- C
insert into alumnos values('462985', 'ARMANDO', 'GOMEZ', 'PONCE', '1999-01-01', '');
-- R
select * from alumnos
where year(fecha) < 2000;
-- U
update alumnos set nacionalidad = null
where trim(nacionalidad) = '';
-- D
delete from alumnos 
where year(fecha) < 2000
and trim(nacionalidad) is null;

-- CesarRojas
select nombre NOM, fecha DATE
from alumnos
where fecha between '2007-07-07' and '2007-11-11'
order by fecha;

select count(*) CONTEO
from (select nombre, fecha
    from alumnos a
    where fecha between '2007-07-07' and '2007-11-11') conteo;


select * from alumnos;

drop table alumnos;
