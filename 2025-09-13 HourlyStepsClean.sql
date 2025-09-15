-- Check duplicate 
SELECT Id, ActivityHour, Count(*) AS Duplicate
FROM bellabeatproject-460905.Bellabeat.hourlysteps
GROUP BY Id, ActivityHour
HAVING Count(*)>1
-- No Duplicate

-- Format ActivityHour and Filter unused data
SELECT Id,
FORMAT_DATETIME('%X',PARSE_DATETIME('%m/%d/%Y %I:%M:%S %p', ActivityHour)) AS ActivityTime,
StepTotal
FROM bellabeatproject-460905.Bellabeat.hourlysteps
ORDER BY Id