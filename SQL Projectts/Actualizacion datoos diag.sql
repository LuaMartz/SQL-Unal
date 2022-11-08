use libreriaG18;

-- Read: leer tabla --- show
show tables;
show columns from book;
describe book;

-- -----------------------------------

-- Update: Actualizar tabla --- alter table

-- Agregar atributo
alter table customer add cus_phone varchar(45);

-- Eliminar un solo atributo o columna
alter table customer drop column cus_email;

-- Renombrar atributo
alter table book change column book_pub_year to book_publicationYear;

-- Cambio tipo de dato del atributo
alter table book modify column book_tittle varchar(100);

-- delete: Eliminar tabla
-- drop table book_customer;

show tables;
describe book;