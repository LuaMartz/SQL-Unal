use libreriaPruebas;

select concat(autNombre, " ", autApellido) from autor;
select concat(aut_Nombre, " ", autApellido) As Autor from autor;

# Producto cartesiano
select * from libro, autor;

select * from libro, autor where libro.autId-autor.autId;
select * from libro natural join autor;

select *  from libro inner join autor on libro.autId=autor.autId;
select *  from libro left join autor on libro.autId=autor.autId;
select *  from libro right join autor on libro.autId=autor.autId;

