select store_id, film_id, count(film_id ) as total_film
from inventory
group by film_id, store_id
order by store_id;