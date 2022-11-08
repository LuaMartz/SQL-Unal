-- Create Read Update Delete  (CRUD)

-- Crear base de datos
create schema libreriaG18;

-- Database: bd que no estan consolidadas, es decir que tendran cambios
-- create database liibreriaG18;

-- Indicar siempre donde se van a realizar las acciones
use libreriaG18;

-- crear tablas
create table Editorial(
	edi_id int primary key not null,
    edi_name varchar(55) not null unique,
    edi_phone varchar(45) not null
);

create table Author(
	aut_id varchar(45) primary key not null,
    aut_name varchar(45) not null,
    aut_lastname varchar(45) not null,
    aut_datebirth date not null,
    -- enum reemplaza valor variable para enumerar las opciones
    aut_countrty enum('Colombia', 'USA', 'Reino Unido', 'Mexico') not null
);

create table Book(
	book_ISDN varchar(45) primary key not null,
    book_tittle varchar(75) not null unique,
    book_pub_year year not null,
    book_editorial int not null,
    book_author varchar(45) not null,
    foreign key(book_editorial) references Editorial(edi_id),
    foreign key(book_author) references Author(aut_id)
);

create table Customer(
	cus_id varchar(45) primary key not null,
    cus_name varchar(45) not null,
    cus_lastname varchar(45) not null,
    cus_email varchar(45) not null unique
);

create table Book_Customer(
	book_cus_id int primary key not null,
    book_ISBN varchar(45) not null,
    cus_id varchar(45) not null,
    date_shell date not null,
    foreign key(book_ISBN)references Book(book_ISBN),
    foreign key(cus_id)references Customer(cus_id)
);