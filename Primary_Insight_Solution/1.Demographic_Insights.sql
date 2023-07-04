-- Q1) Demographic Insights

-- a) Who prefers energy drink more?(M/F/NB)

SELECT t1.Gender,COUNT(t2.Consume_frequency) 
FROM dim_repondents t1
JOIN fact_survey_responses t2
ON t1.Respondent_ID = t2.Respondent_ID 
GROUP BY Gender
HAVING COUNT(t2.Consume_frequency)
ORDER BY COUNT(t2.Consume_frequency) DESC
LIMIT 1;

-- b) Which age group prefers energy drink more 

SELECT t1.age,COUNT(t2.Consume_frequency) 
FROM dim_repondents t1
JOIN fact_survey_responses t2
ON t1.Respondent_ID = t2.Respondent_ID 
GROUP BY age
HAVING COUNT(t2.Consume_frequency)
ORDER BY COUNT(t2.Consume_frequency) DESC
LIMIT 1;

-- c) Which type of marketing reaches the most youth(15-30)

SELECT t2.Marketing_channels, COUNT(*) AS Reach
FROM dim_repondents t1
JOIN fact_survey_responses t2 
ON t1.Respondent_ID = t2.Respondent_ID
WHERE t1.Age=("15-18") OR t1.Age=("19-30")
GROUP BY t2.Marketing_channels
ORDER BY Reach DESC
LIMIT 1;