drop table if exists time_example;

select * from time_example;

/*
Creating the table and specifying data type
*/
create table if not exists time_example(
	time_id bigserial, 
	current_timestamp_col timestamp with time zone,
	clock_time timestamp with time zone	
);

/*
Inserting the data and autogenerating data with the 'generate_series' command
---generate_series(start, stop, step interval)---
*/
insert into time_example(current_timestamp_col,clock_time)
(select current_timestamp,clock_timestamp()
from generate_series(1,1000));

select * from time_example;

SELECT * FROM generate_series('2008-03-01 00:00'::timestamp,
                              '2008-03-04 12:00', '100 hours');
							  
							  

select * /*So in this case we have start,interval and end*/
from generate_series(1,05,0.5)

SELECT date_trunc('day', dd):: date
FROM generate_series
        ( '2020-7-09'::timestamp
        , '2021-07-11'::timestamp
        , '1 day'::interval) dd
        ;



SELECT oid::regprocedure   AS function_signature
     , prorettype::regtype AS return_type
FROM   pg_proc
where  proname = 'generate_series';