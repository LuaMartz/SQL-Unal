use libreriaG18;

-- create: insertar datos
insert into Editorial values(79,"Planeta", "32134457");
insert into Editorial values(15,"Panamericana", "32345457");
insert into Editorial values(77,"Molinos", "97378904");

insert into Author values("A1542308", "Dan", "Brown", '2003-06-05', "USA" );
insert into Author values("F3233208", "Lan", "Trown", '1590-06-10', "Colombia" );
insert into Author values("4845f652", "Can", "Grown", '1999-12-05', "USA" );

insert into Book values("1232-AC12", "El general", 1989, 15, "F3233208");
insert into Book values("1232-AC13", "El pollito", 2012, 77, "4845f652");
insert into Book values("1232-AC14", "El gato", 2022, 79, "A1542308");

-- Read
select * from Book;
select aut_name, aut_country from Author;
select edi_name from Editorial;
select * from Book where book_ISDN="1232-AC13";