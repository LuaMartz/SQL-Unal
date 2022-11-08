use libreriaPruebas;

#composicion
select * from libro
where libPrecio>5000 and libPub>1975 and length(libNombre)<20;

#ordenamiento
select *  from libro order by libNombre;
select * from libro order by libPrecio desc limit 3;
select * from libro where libPrecio<(select avg(libPrecio)from libre);

# Agregacion
select max(libPrecio) from libro;
select max(libNombre) from libro;
select min(libPrecio) from libro;
select min(libNombre) from libro;
select count(libId) from libro;
select avg(libPrecio) from libro;
select * from libro where libPrecio<(select avg(libPrecio) from libro);

-- avg = promedio
select avg(libPrecio) from libro;
select *  from libro where libPrecio <(select avg(libPrecio) from libro);

# Agrupacion 
select sum(vtaTotal), sum(vtaCantidad), libId from venta group by(libId);
select * from venta group by (libId); 
select * from venta; -- todas las ventas

-- group by no permite el uso de condicionales where, se usa having
select sum(vtaTotal), sum(vtaCantidad),libdId from venta group by (libId)
having sum(vtaTotal) > 150000;
