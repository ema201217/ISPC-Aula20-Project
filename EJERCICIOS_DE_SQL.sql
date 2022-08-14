create database BPeluCanina;

use BPeluCanina;

create table DUENO (
dni_d int,
nombre_d varchar(50),
apellido_d varchar(50),
telefono_d bigint,
direccion_d varchar(150),
constraint  pk_d primary key(dni_d)
);
/*--------Ejercicio numero 1 ------*/
create table PERRO(
idperro_p int,
nombre_p varchar(50),
fecha_nac_p date,
sexo varchar(50),
dni_dueno int,
constraint pk_p primary key(idperro_p),
constraint fk_p foreign key (dni_dueno) references DUENO(dni_d)
);

create table HISTORIAL (
id_historial int,
fecha datetime,
perro int,
descripcion varchar(300),
monto int,
constraint pk_h primary key(id_historial),
constraint fk_h foreign key (perro) references PERRO(idperro_p)
);

/*------Ejercicio numero 2------*/
insert into dueno 
values(1,'eva','astrada',423228,'belgrano_1645');
insert into PERRO
VALUES (10,'colitas','2011-10-12','macho',1);

/*Ejercicios Seleccionados: 8 y 4 */
insert into HISTORIAL
values(1,'2020-10-12',10,'amable y fiel ',1200);

update PERRO
set fecha_nac_p ='2022-08-13' where idperro_p=10;


select * from PERRO
