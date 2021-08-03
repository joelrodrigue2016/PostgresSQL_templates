SELECT  date_part('millennium',last_update) as millenium,
	    date_part('century',last_update) as century,
	    date_part('decade',last_update) as decade,
        date_part('year',last_update) as year,
        date_part('isoyear',last_update) as isoyear,
	    date_part('month',last_update) as month,
        date_part('week',last_update) as week,
	    date_part('day',last_update) as day,
	    date_part('hour',last_update) as hour,
      --date_part('timezone_hour',last_update) as timezone_hour,
	    date_part('minute',last_update) as minute,
      --date_part('timezone_minute',last_update) as timezone_minute,
	    date_part('second',last_update) as second,
	    date_part('epoch',last_update) as epoch,
      --date_part('timezone',last_update) as timezone,
        date_part('microsecond',last_update) as microsecond,
		date_part('milliseconds',last_update) as milliseconds,
		date_part('dow',last_update) as dow,
        date_part('doy',last_update) as doy,
        date_part('isodow',last_update) as isodow
        
from public.film_actor

