SELECT Id, ActivityDate, Count(*) AS DuplicateCount
FROM `bellabeatproject-460905.Bellabeat.DailyActivity2` 
GROUP BY Id, ActivityDate
HAVING Count(*) > 1

SELECT Id, ActivityDate, Count(*) AS DuplicateCount
FROM `bellabeatproject-460905.Bellabeat.dailyActivity1` 
GROUP BY Id, ActivityDate
HAVING Count(*) > 1