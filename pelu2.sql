create database PeluCanina;
use PeluCaninan 

/*---Tabla Dueno---*/;

create table Dueno(
dni_d int,
nom_d varchar(50),
ape_d varchar(50),
tel_d bigint,
dir_d varchar (200),
constraint pk_dd primary key (dni_d)
);

/*---Tabla Perro---*/

create table Perro(
id_perro int,
nom_p varchar(50),
fecha_nac date,
sex_p varchar(50),
dni_dueno int,
constraint pk_ip primary key (id_perro),
constraint fk_fdd foreign key (dni_dueno) references Dueno (dni_d)
);				

/*---Tabla historial---*/

create table Historial(
id_h int,
fech_h datetime,
per_h int,
des_h varchar(300),
mon_h float,
constraint pk_ih primary key (id_h),
constraint fk_ph foreign key (per_h) references Perro (id_perro)
);


/*---Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal---*/ 

insert into Dueno values (39484090,"guillermo","arias",3364378878,"santiago del estero 428");
insert into perro values (1,"monroe",'2012-03-15',"macho",39484090);
insert into Historial values(1, '2022-02-08',1,"Baño de espuma",1500);
update Dueno set nom_d ="pedro"  where dni_d=39484090 ;

/*---Obtener todos los perros que asistieron a la peluquería en 2022 ---*/

select nom_p,sex_p,fech_h,des_h,mon_h,nom_d,ape_d from Historial 
inner join Perro on Perro.id_perro = Historial.per_h 
inner join Dueno on  Perro.dni_dueno = Dueno.dni_d where fech_h >2022-01-01 or fech_h< 2023-01-01 ;

/*---Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro---*/

select id_perro,nom_p,fecha_nac,sex_p from Perro inner join Dueno on Perro.dni_dueno = Dueno.dni_d where nom_d = "guillermo" ;

