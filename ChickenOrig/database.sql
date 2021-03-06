create database db_chicken;

use db_chicken;

create sequence

create table Usuario (
	id bigint(10) primary key not null auto_increment,
	nombreUsuario varchar(50) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    perfil varchar(50) not null,
    contrasenia bigint(50) not null
);

create table Proveedor (
	id bigint(10) primary key auto_increment,
    nombre varchar(50) not null,
    direccion varchar(50) not null,
    mail varchar(50) not null,
    telefono varchar(50) not null
);

create table Gallinero (
	id bigint(10) primary key auto_increment,
    nombre varchar(50) not null,
    idUsuario bigint(10) not null,
    stockGallinas bigint(10) not null,
	foreign key (idUsuario) references Usuario (id)	
);

create table Deposito (
	id bigint(10) primary key auto_increment,
    nombre varchar(50) not null,
    stockHuevos bigint(10) default 0,
    stockMaximo bigint(10) not null
);

create table Movimiento (
	id bigint(10) primary key auto_increment,
    fecha date not null,
    cantidad bigint(10) not null,
    idGallinero bigint(10) not null,
    idDeposito bigint(10) not null,
    foreign key (idGallinero) references Gallinero (id),
	foreign key (idDeposito) references Deposito (id)
);

create table Venta (
	id bigint(10) primary key auto_increment,
    fecha date not null,
    cantidad bigint(10) not null,
    precio float not null,
    idProveedor bigint(10) not null,
    idUsuario bigint(10) not null,
    foreign key (idProveedor) references Proveedor (id),
	foreign key (idUsuario) references Usuario (id)
);

create table Parametro (
	id bigint(10) primary key auto_increment,
    descripcion varchar(50) not null,
    valor varchar(50) not null
);


delete from Parametro;
select * from Parametro;



