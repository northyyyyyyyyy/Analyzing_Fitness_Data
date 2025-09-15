-- Check Duplicate
SELECT Id, ActivityHour, Count(*) AS Duplicate
FROM bellabeatproject-460905.Bellabeat.hourlycalories
GROUP BY Id,ActivityHour
HAVING Count(*)>1
-- No Duplicate

-- Format Date MM/DD/YYYY and Filter unused data
SELECT Id,
FORMAT_DATETIME('%X',PARSE_DATETIME('%m/%d/%Y %I:%M:%S %p', ActivityHour)) AS ActivityTime,
Calories
FROM bellabeatproject-460905.Bellabeat.hourlycalories
ORDER BY Id
