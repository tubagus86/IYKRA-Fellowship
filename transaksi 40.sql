SELECT
	c.customer_id,	first_name,	last_name,	email,	count(c.customer_id) as total
FROM
	customer c
INNER JOIN payment p ON p.customer_id = c.customer_id
   group by c.customer_id 
   having count(c.customer_id)>=40
  order by total desc;