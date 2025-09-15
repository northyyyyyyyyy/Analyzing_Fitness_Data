--Check record duration each Id
--remove Id with <7 record cannot perceive weekly pattern for individual
WITH CleanSleep AS (
  SELECT Id, Count(Id) AS TotalRecord
  FROM bellabeatproject-460905.Bellabeat.SleepDay
  GROUP BY Id
  HAVING TotalRecord >=7
)

SELECT s.Id,
FORMAT_DATE('%x',PARSE_DATETIME('%m/%d/%Y %I:%M:%S %p', s.SleepDay)) AS SleepDate,
s.TotalMinutesAsleep,
s.TotalTimeinBed,
s.TotalMinutesAsleep/s.TotalTimeinBed*100 AS SleepEff,
CASE 
WHEN s.TotalMinutesAsleep/s.TotalTimeinBed*100  >= 80 THEN 'Normal'
ELSE 'Low'
END AS SleepScore
FROM bellabeatproject-460905.Bellabeat.SleepDay AS s JOIN
CleanSleep using (Id)
