# Google Data Analytics Capstone: Case study Bellabeat

## Background
​​Bellabeat is a successful small company, but they have the potential to become a larger player in the global smart device market. Urška Sršen, cofounder and Chief Creative Officer of Bellabeat, believes that analyzing smart device fitness data could help unlock new growth opportunities for the company. You have been asked to focus on one of Bellabeat’s products analyzing smart device data to gain insight into how consumers are using their smart devices. The insights you discover will then help guide marketing strategy for the company. 

## Ask Stage Summary (Bellabeat – Leaf Product Focus)
### Business Task
- Analyze users’ sleeping patterns and physical activities to help the product development team design personalized short-term goals and plans that will increase user engagement.
### Target Stakeholders
- Product Development Team → uses insights to design new features (personalized goals, reminders).
- Marketing Team → leverages findings to promote campaigns (e.g., goal achievement rewards).
### Intended Impact
- Enhance user engagement through personalized reminders and achievable goals.
- Improve user loyalty by linking lifestyle patterns to subscription-based guidance.
### Problem Statement
*“This project’s objective is to analyze users’ sleeping patterns and physical activities to help the product development team design personalized goals and plans that will increase user engagement.”*
### Engagement Metrics
- Daily app usage → number of log-ins per day.
- Daily activity time → total minutes of physical activity per day.
- Success rate of hitting targets → percentage of daily/weekly goals achieved.

## Prepare Stage Summary (Bellabeat – Leaf Product)
# Dataset Overview
# Scope & Limitations
- The dataset comes from 33 users. The sample size is not large enough to represent actual Fitbit users.
- The dataset contains data collected during a period of 2 months in 2016. This is outdated and the period is too short to recognize trends.
- There are limited metrics available in the dataset, for example sleep time, activity minutes, steps, and heart rate.
- The dataset contains no demographic information (e.g., sex, age). This data could be useful for understanding customers in each segment.
- Our scope of analysis can only be a prototype to find lifestyle routines that we assume come from general individuals.

# Dataset Classification
- Datasets come in 2 periods, 3/12/2016 - 4/11/2016 and 4/12/2016 - 5/12/2016 so we need to combine them into one for simpler work.
- Core datasets would be DailyActivities, SleepDay which will be used to analyze daily steps, activity minutes, calories, and hours asleep.
- Secondary datasets would be hourly data which will be used to identify patterns within a day
- WeightInfo is used for exploratory use due to limited records.

# Data Quality Considerations
- Duplicates: Remove exact duplicates in daily tables. If the same ID/date has different values (e.g., calories), use the average.
- Missing values: Drop missing rows if the dataset is sufficiently large; otherwise, keep to avoid losing user data.
- Outliers: Keep outliers, as extreme values may reflect real behavior (e.g., long cardio sessions).

# Key Insights for Analysis Plan
1. Focus on overall user patterns due to missing demographic data (sex, age) and small sample size.
2. Use line graphs for weekly/daily trends, bar/pie charts for segmentation, and line charts with target lines for personalized goal tracking.
3. Storyline: Identify routines → classify as healthy/unhealthy → provide tailored action (reminders or personalized goals).

## Act Stage – Final Recommendations

# Business Task Reminder
The objective of this project was to analyze user sleep and activity routines from Fitbit data to provide insights for BellaBeat’s product development (personalized goal setting) and marketing team (campaign strategies that increase engagement).

![Dashboard](/Users Trend and Insight.png)

🔗 [Explore the interactive version on Tableau Public](https://public.tableau.com/views/GoogleDataAnalyticsCapstoneCasestudyBellabeat/PersonalizedView?:language=en-GB&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)


# Key Insights & Recommendation
1. Weekly Patterns – Peak Activity on Mon, Wed, Sat
- Users are most active on these days and sleep better on Wed & Sat.
- **Recommendation:** Schedule in-app challenges and push notifications aligned with these peak days, reinforcing healthy momentum when users are already more engaged.
2. Calories Driven by Very Active Minutes
- Calorie burn correlates strongly with very active minutes compared to other active levels. 
- **Recommendation:** Introduce intensity-based goals (e.g., “20 min active activity”) to help users achieve better results and feel progress faster than with step-only goals. We could also provide support with follow-along workout videos or partnership with gyms encouraging users to participate in HIIT classes.
3. Daily Routine Patterns – Noon & Evening Activity Spikes
- Users walk more during noon and after 6 pm which can be inferred to be lunch break and after work. 
- **Recommendation:** Send smart reminders during these windows (e.g., “Take a 5-min walk now to hit today’s goal”), aligning with natural routines rather than forcing new ones.
4. Sedentary Lifestyle – 80% of Time Inactive
- Most users spend the majority of their day sedentary. There are gaps where we can encourage users to be more active.
- **Recommendation:** Launch a “Break the Sedentary Cycle” campaign rewarding users for reducing long sitting periods (e.g., badges, loyalty points, or wellness gift rewards).
5. Lack of weight information 
- Weight and BMI data can unlock highly personalized user goals. For example, an overweight user may benefit from weight-loss targets, while a normal-weight user may focus on performance goals such as preparing for a marathon.
- **Recommendation:** Require demographic details (e.g., age, sex, weight) during registration. Use these attributes to tailor goal-setting and connect users with similar profiles in a brand community.This not only increases personalization and motivation but also strengthens BellaBeat’s brand loyalty and supports organic growth through community referrals.
