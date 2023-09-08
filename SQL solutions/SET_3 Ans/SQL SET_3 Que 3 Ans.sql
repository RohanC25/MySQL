drop trigger if exists delete_cascade;

select * from movies;
insert into movies(id, title, category)
     values(11,'Inception','Sci-fi');
     
insert into rentals (memid, first_name, last_name, movieid)
     values(9,'David','Warner',11);
     
delete from movies where id = 11;
select id from movies;

select * from rentals;

insert into movies(id, title, category)
     values(12,'Inception','Sci-fi');
     
UPDATE rentals SET movieid = 12
     where memid = 9;
     
UPDATE movies SET id = 11
     where title = 'Inception';
     
     select * from movies;
     
     select * from rentals;