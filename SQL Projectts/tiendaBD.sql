drop schema if exists tiendaG18;

create schema tiendaG18;

use tiendaG18;

# Proveedor - Productos - Categoría - Marca 
create table proveedor(
	prov_id int primary key not null,
    prov_nombre varchar(45) not null,
    prov_telefono varchar(45) not null
);

create table categoria(
	cat_id varchar(45) primary key not null,
	cat_nombre varchar(45)  not null,
    cat_fecha_creacion date not null
);


create table productos(
	pro_id varchar(45) primary key not null,
    pro_nombre varchar(45) not null,
    pro_precio int not null,
    pro_cantidad_disponible int not null,
    pro_fecha_vencimiento date,
    pro_marca varchar(45) not null,
    pro_proveedor int not null,
    pro_categoria varchar(45) not null,
    foreign key(pro_proveedor)references proveedor(prov_id),
    foreign key(pro_categoria)references categoria(cat_id)
);




