-- Combine Activity (Focus on Steps,Distance, Calories)
SELECT Id, ActivityDate, TotalSteps, ROUND(TotalDistance,2) AS TotalDistance,Calories 
FROM `bellabeatproject-460905.Bellabeat.dailyActivity1` 
UNION Distinct
SELECT Id, ActivityDate, TotalSteps, ROUND(TotalDistance,2) AS TotalDistance,Calories 
FROM bellabeatproject-460905.Bellabeat.DailyActivity2
ORDER BY Id
LIMIT 50