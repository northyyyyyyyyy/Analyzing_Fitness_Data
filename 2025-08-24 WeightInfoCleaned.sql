SELECT CAST(Id AS STRING) AS Id,ROUND(AVG(WeightKg)) AS weight,ROUND(AVG(BMI)) AS BMI,
CASE
WHEN AVG(BMI) < 18.5 THEN 'Underweight'
WHEN 18.5 < AVG(BMI) AND AVG(BMI) < 25 THEN 'Healthy'
WHEN 25 <= AVG(BMI) AND AVG(BMI) < 30 THEN 'Overweight'
WHEN AVG(BMI) > 30 THEN 'Obesity'
END AS Categories
FROM (SELECT * FROM `bellabeatproject-460905.Bellabeat.WeightLogInfo1` 
UNION ALL
SELECT * FROM bellabeatproject-460905.Bellabeat.WeightLogInfo2)
GROUP BY Id