create database if not exists peluCanina;
use peluCanina;

/*-TABLA DUENO-*/
create table Dueno (
dni_d int,
nombre_d varchar(50) not null,
apellido_d varchar(50) not null,
telefono_d bigint not null,
direccion_d varchar(150) not null,
constraint  pk_d primary key(dni_d)
);

/*-TABLA PERRO-*/
create table Perro(
IDperro_p int,
nombre_p varchar(50) not null,
fecha_nac_p date not null,
sexo varchar(50) not null,
dni_Dueno int,
constraint pk_p primary key(IDperro_p),
constraint fk_p foreign key (dni_Dueno) references Dueno(dni_d)
);

/*-TABLA HISTORIAL-*/
create table Historial(
ID_historial int,
fecha datetime not null,
perro int,
descripcion varchar(150) not null,
monto float not null,
constraint pk_h primary key(ID_historial),
constraint fk_h foreign key (perro) references Perro(IDperro_p)
);


insert into Dueno values (28957346, "Juan", "Perez", 4789689, "Belgrano 101");
insert into Dueno values (22959344, "Lola", "Juares", 4382481, "Rivadavia 202");
insert into Dueno values (30945826, "María", "Avellaneda", 4452136, "Colombia 303");
insert into Dueno values (26467751, "Ariel", "Rosales", 4326459, "Villagrande 404");
insert into Perro values (13, "Puppy", '2012-12-12' , "Hembra", 28957346);
insert into Perro values (05, "Scooby", '2022-01-13' , "Macho", 22959344);
insert into Perro values (10, "Capitán", '2018-06-11' , "Macho", 30945826);
insert into Perro values (20, "Sufflé", '2020-11-29' , "Hembra", 26467751);
insert into Historial values (1,'2022-07-02',13,"Control",550.50);
insert into Historial values (2,'2022-07-13',05,"Vacunacion",380.50);
insert into Historial values (3,'2022-07-26',10,"Control",550.50);
insert into Historial values (4,'2022-07-30',20,"Control",550.50);

/*-EJERCICIO 7-*/
select sum(monto)  from Historial where fecha >= '2022-07-01' and fecha <= '2022-07-31'
