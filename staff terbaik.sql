select staff_id, (select concat(first_name, ' ', last_name)
from staff s
where p.staff_id = s.staff_id) as staff_name, count(payment_id ) as number_of_payment, sum(amount) as total_payment_amount
from payment p group by staff_id order by number_of_payment desc;