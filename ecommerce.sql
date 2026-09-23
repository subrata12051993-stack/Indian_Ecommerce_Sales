select * from blinkit_db;
select count(*) from blinkit_db;
SET SQL_SAFE_UPDATES = 0;
UPDATE blinkit_db
SET `item fat content` = CASE
    WHEN `item fat content` IN ('lf', 'low fat') THEN 'Low Fat'
    WHEN `item fat content` = 'reg' THEN 'Regular'
    ELSE `item fat content`
END;
select distinct(`item fat content`) from blinkit_db;
select cast(sum(sales)/1000000 as decimal(10,2)) as total_sales_in_million from blinkit_db ;

SELECT CAST(AVG(SALES) AS DECIMAL(10,2)) AS AVG_SALES FROM blinkit_db;

SELECT COUNT(`ITEM TYPE`) AS NO_OF_ITEMS FROM blinkit_db;

SELECT CAST(AVG(RATING) AS DECIMAL(10,2)) AS AVG_RATING FROM blinkit_db;


SELECT `ITEM TYPE`,
CAST(SUM(SALES) AS DECIMAL(10,2))AS TOTAL_SALES, 
CAST(AVG(SALES) AS DECIMAL(10,2))AS AVG_SALES,
CAST(AVG(RATING) AS DECIMAL(10,2))AS AVG_RATING
FROM BLINKIT_DB 	
GROUP BY(`ITEM TYPE`) 
ORDER BY TOTAL_SALES DESC LIMIT 5;

SELECT `Outlet Establishment Year`,
CAST(SUM(SALES) AS DECIMAL(10,2))AS TOTAL_SALES, 
CAST(AVG(SALES) AS DECIMAL(10,2))AS AVG_SALES,
CAST(AVG(RATING) AS DECIMAL(10,2))AS AVG_RATING
FROM BLINKIT_DB 	
GROUP BY(`Outlet Establishment Year`) 
ORDER BY `Outlet Establishment Year` DESC;

SELECT `Outlet Location Type`,
CAST(SUM(SALES) AS DECIMAL(10,2))AS TOTAL_SALES, 
CAST(AVG(SALES) AS DECIMAL(10,2))AS AVG_SALES,
CAST(AVG(RATING) AS DECIMAL(10,2))AS AVG_RATING
FROM BLINKIT_DB 	
GROUP BY(`Outlet Location Type`) 
ORDER BY TOTAL_SALES DESC;