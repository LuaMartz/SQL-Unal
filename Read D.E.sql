use libreriaG18;

-- Read
select * from Book;
select edi_name from Editorial;
select aut_name from Author;
select * from Book where book_ISDN="1232-AC13";

-- Update
update Author set aut_name="Joanne" where aut_id="4845f652";

-- delete
-- delete from Editorial where edi_id="77";