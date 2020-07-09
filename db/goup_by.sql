--PROBLEM 1
select g.name, count(*)
from genre g
join track t on t.genre_id = g.genre_id
group by g.name;

--PROBLEM 2
select g.name, count(*)
from genre g
join track t on t.genre_id = g.genre_id
where g.name = 'Pop' or g.name = 'Rock'
group by g.name;

--Problem 3 
select ar.name, count(*) from artist ar
join album al on al.artist_id = ar.artist_id
group by ar.name;