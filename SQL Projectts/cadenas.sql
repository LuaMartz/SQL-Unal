use libreriaPruebas;

# proyeccion
select * from libro;

# seleccion numerica
select * from libro where libPub>=1990 and libPub<=2010 and libPrecio<80000;

select * from libro where libPub between 1990 and 2005;

# Seleccion cadena de caracteres
# % indica que hay texto antes o despues de un caracter
select * from libro where libNombre like "El%";

select * from libro where libNombre like "%ra%";

select * from libro where libNombre like "%ra";

select * from libro where libNombre not like "%os";

select * from libro where libNombre like "%_e__c___o%";

-- Establece longitud cadena
select * from libro where length(libNombre)>20;

select *, length(libNombre) from libro; 

-- concatenar
select concat(autNombre, " ", autApellido) from autor;

-- Mayusculas y Minusculas
select * from libro where lower(libNombre) like "maria";
select * from libro where upper(libNombre) like "MARIA";
select upper(libNombre) from libro;

select *  from libro where libNombre between "Condores no entierran todos los dias" and "La vorágine";


