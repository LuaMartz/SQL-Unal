create schema tienda;

use tienda;

/*
Producto
	-id
    -nombre
    -precio
    -fecha
    -cantidad
    -peso
    -proveedor
    -categoria
    -marca
    ...
proveedor
categoria
marca

*/

# Proveedor  - Productos - Categoria - Marcas
create table proveedir(
	prov_id int primary key not null,
    prov_nombre varchar(45) not null,
    prov_tel varchar(45)not null
);

create table categoria(
	 cat_nombre varchar(45) primary key not null,
     cat_fecha_creacion date not null
);

create table marcan(
	mar_nombre varchar(45) primary key not null,
    mar_pais varchar(45) not null
);

create table productos(
	pro_id varchar(45) not null,
    pro_nombre varchar(45) not null,
    pro_precio int not null,
    pro_cantidad_disponible int not null,
    pro_marca varchar(45) not null,
    pro_proveedor int not null,
    pro_categoria varchar(45) not null,
    foreign key(pro_proveedor) references proveedor(prov_id),
    foreign key(pro_marca) references marca(mar_nombre),
    foreign key(pro_categoria) references categoria(cat_nombre)
);