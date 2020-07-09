--PROBLEM 1
select * from invoice i
join invoice_line il on i.invoice_id = il.invoice_id
where il.unit_price > 0.99;

--PROBLEM 2
select i.invoice_date, c.first_name, c.last_name, i.total from invoice i
join customer c on i.customer_id = c.customer_id;

--PROBLEM 3
select c.first_name, c.last_name, e.first_name, e.last_name from employee e
join customer c on c.support_rep_id = e.employee_id;

--PROBLEM 4
select al.title, ar.name from album al
join artist ar on ar.artist_id = al.artist_id;

--PROBLEM 5
select pt.track_id from playlist_track pt
join playlist p on pt.playlist_id = p.playlist_id
where p.name = 'Music';

--PROBLEM 6
select t.name from track t
join playlist_track pt on pt.track_id = t.track_id
where pt.playlist_id = 5;

--PROBELM 7
select t.name, p.name from track t
join playlist_track pt on pt.track_id = t.track_id
join playlist p on p.playlist_id = pt.playlist_id;

--PROBLEM 8 
select t.name, al.title from track t
join album al on al.album_id = t.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk';

--BLACK DIAMOND
select t.name, g.name, al.title, ar.name from track t
join playlist_track pt on pt.track_id = t.track_id
join playlist p on p.playlist_id = pt.playlist_id
join album al on al.album_id = t.album_id
join artist ar on ar.artist_id = al.artist_id
join genre g on g.genre_id = t.genre_id
where p.name = 'Music';