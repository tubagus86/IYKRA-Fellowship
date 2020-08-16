select count(film_id) jumlah_film
from film
where rating = 'R' and replacement_cost between 5 and 15;