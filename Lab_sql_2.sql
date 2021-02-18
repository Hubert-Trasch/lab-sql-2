select * from actor
where first_name = 'SCARLETT';

select * from actor
where last_name = 'JOHANSSON';

select count(rental_id) from rental
where return_date is null;

select count(rental_id) from rental
where return_date is not null;

select * from film
order by rental_duration desc
limit 10;

select * from film
order by rental_duration asc
limit 10;

select max(length) as max_duration from film_list;
select floor(length) as max_duration from film_list
order by max_duration desc;


select min(length) as min_duration from film_list;

select avg(length) as avg_duration from film_list;

select *,concat(floor(length/60),'h ',mod(length,60),'m') as length_new from film_list;

select *,concat(floor(length/60),'h ',mod(length,60),'m') as length_new from film_list
where length >180;

select lower(email) from customer;

select max(length(title)) from film;

select * from film
where (length(title))=27;

select title, length, (length(title)) as length_title from film
order by length_title desc
limit 1;



