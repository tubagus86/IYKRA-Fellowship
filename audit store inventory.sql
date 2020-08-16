select rating, AVG(replacement_cost) as average_cost
from film
group by rating
order by rating desc;