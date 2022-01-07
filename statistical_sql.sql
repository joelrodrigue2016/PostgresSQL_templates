/*
These are some of the statistical functions that can be used in postgresql
*/
SELECT 
  AVG(sepal_length) AS mean,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sepal_length) AS median,
  MIN(sepal_length) AS min,
  MAX(sepal_length) AS max,
  MAX(sepal_length) - MIN(sepal_length) AS range,
  STDDEV(sepal_length)AS standard_deviation,
  VARIANCE(sepal_length) AS variance,
  PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY sepal_length) AS q1,
  PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY sepal_length) AS q2,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY sepal_length) AS q3,
  PERCENTILE_CONT(1) WITHIN GROUP (ORDER BY sepal_length) AS q4,
  ROUND(COUNT(sepal_length)::NUMERIC / SUM(COUNT(sepal_length)) OVER()) AS relative_frequency,
  COUNT(DISTINCT(sepal_length)) AS cardinality,
  MODE() WITHIN GROUP (ORDER BY sepal_length) AS mode,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY sepal_length) -PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY sepal_length) AS iqr,
  POWER(STDDEV(sepal_length), 2) AS variance_using_stddev
  FROM iris;
  
  
 
 
  WITH hhh AS
(
 SELECT 
	
  AVG(sepal_length) AS mean,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sepal_length) AS median,
  STDDEV(sepal_length) AS stddev
   FROM iris
)
SELECT 
 (3 * (mean - median)::NUMERIC / stddev, 2) AS skewness
  FROM hhh;
  
  
  ---------------------------------
  
  
  
  
----- mean
SELECT 
  AVG( sepal_width) AS mean,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY  sepal_width) AS median,
  MIN( sepal_width) AS min,
  MAX( sepal_width) AS max,
  MAX( sepal_width) - MIN( sepal_width) AS range,
  STDDEV( sepal_width)AS standard_deviation,
  VARIANCE( sepal_width) AS variance,
  PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY  sepal_width) AS q1,
  PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY  sepal_width) AS q2,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY  sepal_width) AS q3,
  PERCENTILE_CONT(1) WITHIN GROUP (ORDER BY  sepal_width) AS q4,
  ROUND(COUNT( sepal_width)::NUMERIC / SUM(COUNT( sepal_width)) OVER()) AS relative_frequency,
  COUNT(DISTINCT( sepal_width)) AS cardinality,
  MODE() WITHIN GROUP (ORDER BY  sepal_width) AS mode,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY  sepal_width) -PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY  sepal_width) AS iqr,
  POWER(STDDEV( sepal_width), 2) AS variance_using_stddev
  FROM iris;
  
  
 
 
  WITH hhh AS
(
 SELECT 
	
  AVG( sepal_width) AS mean,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY  sepal_width) AS median,
  STDDEV( sepal_width) AS stddev
   FROM iris
)
SELECT 
 (3 * (mean - median)::NUMERIC / stddev, 2) AS skewness
  FROM hhh;
  
  
  
  ---------------------------------------
  
  
----- mean
SELECT 
  AVG( petal_width) AS mean,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY  petal_width) AS median,
  MIN( petal_width) AS min,
  MAX( petal_width) AS max,
  MAX( petal_width) - MIN( petal_width) AS range,
  STDDEV( petal_width)AS standard_deviation,
  VARIANCE( petal_width) AS variance,
  PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY  petal_width) AS q1,
  PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY  petal_width) AS q2,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY  petal_width) AS q3,
  PERCENTILE_CONT(1) WITHIN GROUP (ORDER BY  petal_width) AS q4,
  ROUND(COUNT( petal_width)::NUMERIC / SUM(COUNT( petal_width)) OVER()) AS relative_frequency,
  COUNT(DISTINCT( petal_width)) AS cardinality,
  MODE() WITHIN GROUP (ORDER BY  petal_width) AS mode,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY  petal_width) -PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY  petal_width) AS iqr,
  POWER(STDDEV( petal_width), 2) AS variance_using_stddev
  FROM iris;
  
  
 
 
  WITH hhh AS
(
 SELECT 
	
  AVG( petal_width) AS mean,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY  petal_width) AS median,
  STDDEV( petal_width) AS stddev
   FROM iris
)
SELECT 
 (3 * (mean - median)::NUMERIC / stddev, 2) AS skewness
  FROM hhh;
  
  
  ---------------------
  
  
  
  
  
  
