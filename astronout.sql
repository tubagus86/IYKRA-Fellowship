select
   title,
   release_year,
   description
from 
   film
where
    description like '%stronaut%'
order by 
    title;