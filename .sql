create database aeropuerto;
USE aeropuerto;

CREATE TABLE Usuario(
IdUsuario int not null auto_increment,
Nombre varchar(45) not null,
Apellido varchar(45) not null,
Documento int (10)  not null,
primary key (IdUsuario)
) engine= InnoDB;

CREATE TABLE pasajeros(
Idpasajeros int not null auto_increment,
primary key (Idpasajeros),
IdUsuario int not null,
constraint IdUsuario foreign key (IdUsuario)
references Usuario (IdUsuario)

) engine= InnoDB;

CREATE TABLE vuelos(
Idvuelos int not null auto_increment,
Destino varchar(45) not null,
Regreso varchar(45) not null,
primary key (Idvuelos)
) engine= InnoDB;



insert into  Usuario (Nombre, Apellido, Documento) values ('Carlos', 'Martinez','712345');
insert into  Usuario (Nombre, Apellido, Documento) values ('Diana', 'lopez','789456');
insert into  Usuario (Nombre, Apellido, Documento) values ('Sandra', 'Mora','745678');
insert into  Usuario (Nombre, Apellido, Documento) values ('Fernando', 'Castro','456123');
insert into  Usuario (Nombre, Apellido, Documento) values ('Mauro', 'Castillo','125945');
insert into  Usuario (Nombre, Apellido, Documento) values ('Yenny', 'Becerra','852369');
insert into  Usuario (Nombre, Apellido, Documento) values ('Alex', 'Fonseca','147852');
insert into  Usuario (Nombre, Apellido, Documento) values ('Tatiana', 'Yatte','159753');
insert into  Usuario (Nombre, Apellido, Documento) values ('Laura', 'Niño','365458');
insert into  Usuario (Nombre, Apellido, Documento) values ('Carlos', 'Herrera','012384');

select * from Usuario;

insert into pasajeros values (1,1);

select * from pasajeros;

insert into vuelos (Destino, Regreso)values ('bogota', 'Cali');
insert into vuelos (Destino, Regreso)values ('Santa marta', 'Bogota');
insert into vuelos (Destino, Regreso)values ('bogota', 'Medellin');
insert into vuelos (Destino, Regreso)values ('bogota', 'Cartagena');
insert into vuelos (Destino, Regreso)values ('Cartagena', 'Cali');
insert into vuelos (Destino, Regreso)values ('Medellin', 'Cali');
insert into vuelos (Destino, Regreso)values ('bogota', 'Buenos aires');
insert into vuelos (Destino, Regreso)values ('bolivia', 'bogota');
insert into vuelos (Destino, Regreso)values ('bogota', 'Bucaramanga');
insert into vuelos (Destino, Regreso)values ('Bucaramanga', 'Cali');
