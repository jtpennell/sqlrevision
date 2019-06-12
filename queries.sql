/*
A review on different querying commands for SQL
*/

/* list all the distinct neighbourhoods */
select distinct neighborhood
from nomnom; 

/* give a distinctive list of cuisines */
select distinct cuisine
from nomnom; 

/* name all the chinese restaurants */
select name
from nomnom
where cuisine = 'Chinese'; 

/* return all the restaurants with a review 4 and up */
select name
from nomnom
where review > 4; 

/* return all the expensive italian restaurants */
select name
from nomnom
where cuisine = 'Italian' and price = '$$$';

/* find a restaurant with the word 'meatballs' in the name */
select name
from nomnom
where name like '%meatball%';

/* find all restaurants from set of locations */
select name
from nomnom
where neighborhood = 'Midtown' or neighborhood = 'Downtown' or neighborhood = 'Chinatown';

/* find all restaurants with pending health grade */
select name
from nomnom
where health is null; 

/* creating a top 10 list based on ranking */
select name
from nomnom
order by review desc
limit 10;

/* using case statements to change the rating system */
select name, 
case
	when review > 4.5 then 'extraordinary'
  when review > 4 then 'excellent'
  when review > 3 then 'good'
  when review > 2 then 'fair'
  else 'poor'
end as rating
from nomnom;
