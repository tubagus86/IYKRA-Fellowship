select concat(first_name, ' ', last_name), email, (select sum(amount)
from payment p where c.customer_id = p.customer_id) as spent_amount
from customer c order by spent_amount desc limit 5;