/* 
SQL Revision 1
*/

/* Create a table named friends */
create table friends (
	id INTEGER,
  name TEXT,
  birthday DATE
);

/* Add people to the friends table */
insert into friends (id, name, birthday)
values (1, 'Jane Doe', '1990-05-30');

insert into friends (id, name, birthday)
values (2, 'moosik', '1995/10/10');

insert into friends (id, name, birthday)
values (3, 'nig', '1996/12/12');

/* Change Janes last name in the table */
update friends 
set name = 'Jane Smith'
where name = 'Jane Doe'

/* Add a new column email */
alter table friends
add email Text;

/* Update the email of Jane */
update friends
set email = 'jane@codecademy.com'
where name = 'Jane Smith';

update friends
set email = 'email@email.com'
where id = 2;

update friends
set email = 'email2@email.com'
where id = 3;

/* Remove Jane row from friends table */
delete from friends
where name = 'Jane Smith';

/* Display the table as a result */
select * from friends

