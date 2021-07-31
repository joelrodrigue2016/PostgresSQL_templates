--input values, including nulls, concatenated into an array.	
--input arrays concatenated into array of one higher dimension 
--(inputs must all have same dimensionality, and cannot be empty or null).

select array_agg(spend_2014)
from public.percent_change

--equivalent to bool_and
select every(spend_2014 < spend_2017)
from public.percent_change


--aggregates values, including nulls, as a JSON array
select json_agg(spend_2014)
from public.percent_change

select jsonb_agg(spend_2014)
from public.percent_change





------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------
--correlation coefficient
select corr(spend_2014,spend_2017)
from public.percent_change

--population covariance
select covar_pop(spend_2014,spend_2017)
from public.percent_change

--sample covariance
select covar_samp(spend_2014,spend_2017)
from public.percent_change


--average of the independent variable (sum(X)/N)
select regr_avgx(spend_2014,spend_2017)
from public.percent_change

--average of the dependent variable (sum(Y)/N)
select regr_avgy(spend_2014,spend_2017)
from public.percent_change

--number of input rows in which both expressions are nonnull
select regr_count(spend_2014,spend_2017)
from public.percent_change


--y-intercept of the least-squares-fit linear equation determined by the (X, Y) pairs
select regr_intercept(spend_2014,spend_2017)
from public.percent_change


--square of the correlation coefficient
select regr_r2(spend_2014,spend_2017)
from public.percent_change

--slope of the least-squares-fit linear equation determined by the (X, Y) pairs
select regr_slope(spend_2014,spend_2017)
from public.percent_change

--sum(X^2) - sum(X)^2/N ("sum of squares" of the independent variable)
select regr_sxx(spend_2014,spend_2017)
from public.percent_change

--sum(X^2) - sum(X)^2/N ("sum of squares" of the independent variable)
select regr_sxy(spend_2014,spend_2017)
from public.percent_change

--sum(Y^2) - sum(Y)^2/N ("sum of squares" of the dependent variable)
select regr_syy(spend_2014,spend_2017)
from public.percent_change

--Standard deviation
select stddev(spend_2014)
from public.percent_change

--Standard deviation population
select stddev_pop(spend_2014)
from public.percent_change

--Standard deviation population sample
select stddev_samp(spend_2014)
from public.percent_change

--Variance
select variance(spend_2014)
from public.percent_change

--variance population
select var_pop(spend_2014)
from public.percent_change

--variance sample
select var_samp(spend_2014)
from public.percent_change

------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Rank and dense rank used together                                               
select *,                                                                       
rank() over (order by spend_2017 desc),						
dense_rank() over (order by spend_2017 desc)					
from public.percent_change




select *,
rank() over (order by office desc) as office_rank,
dense_rank() over (order by office desc) as office_dense_rank,
rank() over (order by flavor desc) as flavor_rank,
dense_rank() over (order by flavor desc) as flavor_dense_rank
from public.ice_cream_survey



select *,
rank() over (order by office desc) as office_rank,
dense_rank() over (order by office desc) as office_dense_rank,
percent_rank() over (order by office desc)--100 as percent_rank,
cume_dist() over (order by office desc) as cum_dist,

rank() over (order by flavor desc) as office_rank,
dense_rank() over (order by flavor desc) as office_dense_rank,
percent_rank() over (order by flavor desc)--100 as percent_rank,
cume_dist() over (order by flavor desc) as cum_dist

from public.ice_cream_survey

							                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT spend_2014,spend_2017,
GROUPING(spend_2014,spend_2017), 
sum(spend_2014) 
from public.percent_change
GROUP BY ROLLUP(spend_2014,spend_2017)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------

							                        
--XML


SELECT xmlforest(percent_change, spend_2017)
FROM public.percent_change




