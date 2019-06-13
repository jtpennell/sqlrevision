/* 
revision of aggregate functions in sql
*/

/* calculates total companies in the startups table */
select count(name)
from startups;

/* calculate the total value of all companies */
select sum(valuation)
from startups;

/* gets highest amount raised by a startup */
select max(raised)
from startups;

/* returns teh max amount of money raised during 'seed' stage */
select max(raised)
from startups
where stage = 'Seed';

/* gets the oldest company year founded */
select min(year)
from startups;

/* returns the average valuation of the startups table */
select avg(valuation)
from startups;

/* return average valuation in each category
and round to two decimal points
and order by highest averages to lowest */
select category, round(avg(valuation), 2)
from startups
group by 1;
order by 2 desc;

/* return each category with total number of companies that belong to it */
select category, count(*)
from startups
group by 1;

/* filter the result to only include categories that have more than three companies in them */
select category, count(*)
from startups
group by 1
having count(*) > 3;

/* average size of a startup in each location */
select location, avg(employees)
from startups
group by location;

/* with the average employee above 500 */
select location, avg(employees)
from startups
group by location
having avg(employees) > 500;
