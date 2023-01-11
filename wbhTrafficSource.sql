-- Count how many rows am I working with in chart table which is 10439. 
SELECT COUNT(*)
FROM wbh.chart_data;

-- Converting the column date in total table from text type to date type
UPDATE wbh.total_table
set date = str_to_date(`Date`, '%Y-%m-%d')
WHERE `index` > -1;

ALTER TABLE wbh.total_table
MODIFY COLUMN Date date;

-- Converting the column date in chart data from text type to date type
UPDATE wbh.chart_data
set date = str_to_date(`Date`, '%Y-%m-%d')
WHERE `index` > -1;

ALTER TABLE wbh.chart_data
MODIFY COLUMN Date date;


/*
Coverting impressions column into int
*/
UPDATE wbh.table_data
set Impressions = convert(Impressions, signed);

ALTER TABLE wbh.table_data
MODIFY COLUMN `Impressions` int;

/*
Replace blanks or nulls with a 0 value and up date the table
*/

SELECT Count(`Impressions_click-through_rate(%)`)
FROM wbh.table_data
where `Impressions_click-through_rate(%)` = '';

UPDATE wbh.table_data
SET `Impressions_click-through_rate(%)` = 0
WHERE `Impressions_click-through_rate(%)` = '';


UPDATE wbh.table_data
SET `Impressions` = 0
WHERE `Impressions` = '';


-- count total columns
SELECT COUNT(*)
FROM wbh.table_data;

-- table data ordered by Views column
SELECT *
FROM wbh.table_data
ORDER BY 2 DESC;

-- chart data ordered by Date column
SELECT *
FROM wbh.chart_data
ORDER BY 4 DESC;

-- Total views in chart data = '24299'.
SELECT sum(views) AS total_views
FROM wbh.chart_data;


-- Total impressions = '443558'
SELECT sum(Impressions) AS total_Impressions
FROM wbh.table_data;

-- sum of views grouped by traffic source in chart data 
SELECT `Traffic source`, sum(views) AS total_views
FROM wbh.chart_data
GROUP BY `Traffic source`
ORDER BY 2;

-- View count in DESC order grouped by Date
SELECT `Date`, SUM(`Views`)
FROM wbh.chart_data
GROUP BY Date 
ORDER BY 2 DESC;

/* View date 11/11/22 and 11/12/22 to see any
relavence to tictok high views on those days
but no relavence */

SELECT *
FROM wbh.chart_data
WHERE `Date` = '2022-11-11' OR `Date` = '2022-11-12'
ORDER BY 2;


/*
I want to see what the traffic source was most prevalent during 11/11 and 11/12
*/

SELECT Date, `Traffic source`, sum(Views)
FROM wbh.chart_data
WHERE `Traffic source` = 'Suggested videos' AND Date = '2020-11-11';

/*
Checking Impressions data from table data 
*/
SELECT *
From wbh.table_data;

-- Impressions in desc order 
SELECT *
From wbh.table_data
WHERE Impressions > 0 
order by 5 desc;

-- Percentage of Impressions_click-through_rate(%) in desc order
SELECT *
From wbh.table_data
WHERE `Impressions_click-through_rate(%)` > 0 
order by 6 desc;


-- Total of impressions count
SELECT SUM(Impressions) as total
From wbh.table_data;






