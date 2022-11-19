-- Count how many rows am I working with in chart table which is 10439. 
-- SELECT COUNT(*)
-- FROM wbh.chart_data;

SELECT COUNT(*)
FROM wbh.table_data;

-- table data ordered by Views column
SELECT *
FROM wbh.table_data
ORDER BY 2;

-- chart data ordered by Date column
SELECT *
FROM wbh.chart_data
ORDER BY 1;

-- Total views in chart data = '24299'.
SELECT sum(views) AS total_views
FROM wbh.chart_data;

-- Total views in table data = '24299'.
SELECT sum(views) AS total_views
FROM wbh.table_data;

-- Total impressions = '443558'
SELECT sum(Impressions) AS total_Impressions
FROM wbh.table_data;

-- sum of views grouped by traffic source in chart data 
-- to confirm they match table data traffic source view
-- Yay! they match.
SELECT `Traffic source`, sum(views) AS total_views
FROM wbh.chart_data
GROUP BY `Traffic source`
ORDER BY 2;

-- View count in DESC order
SELECT `Date`, SUM(`Views`)
FROM wbh.chart_data
GROUP BY Date 
ORDER BY 2 DESC;

