create database PeluCanina;

use PeluCaninan 



/*---Tabla Dueno---*/;



create table Dueno(

dni_dueno int,

nom_dueno varchar(50),

apellido_dueno varchar(50),

telefono_dueno bigint,

direccion_dueno varchar (200),

constraint pk_dueno primary key (dni_dueno)

);



/*---Tabla Perro---*/



create table Perro(

id_perro int,

nombre_perro varchar(50),

fecha_nacimiento date,

sex_perro varchar(50),

dni_dueno int,

constraint pk_ip primary key (id_perro),

constraint fk_fdd foreign key (dni_dueno) references Dueno (dni_d)

);				

/*---Borrar un paciente que no sera atendido---*/
select * from PeluCanina;
delete from PeluCanina
where nombre="Pepita"



