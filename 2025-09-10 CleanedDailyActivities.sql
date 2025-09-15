SELECT 
    Id,
    ActivityDate,
    TotalSteps,
    TotalDistance,
    VeryActiveMinutes,
    FairlyActiveMinutes,
    LightlyActiveMinutes,
    SedentaryMinutes,
    Calories
FROM bellabeatproject-460905.Bellabeat.dailyActivity1
UNION ALL
SELECT 
    Id,
    ActivityDate,
    TotalSteps,
    TotalDistance,
    VeryActiveMinutes,
    FairlyActiveMinutes,
    LightlyActiveMinutes,
    SedentaryMinutes,
    Calories
FROM bellabeatproject-460905.Bellabeat.DailyActivity2