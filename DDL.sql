/*create database tallervolcadodatos;

use tallervolcadodatos;
\c tallervolcadodatos;
*/

create table departamento(
    id int primary key,
    nombre_departamento varchar(50)
);

create table municipio(
    id int primary key,
    nombre_municipio varchar(50),
    id_departamento int,
    foreign key(id_departamento) references departamento(id)
);

create table localidades(
    iddpto int,
    nombredpto varchar(50),
    idmunicipio int,
    nombremunicipio varchar(50)
);