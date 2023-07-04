-- Q5) Brand Penetration

-- a) What do people think about our brand? (overall rating)

SELECT Taste_experience,COUNT(*)
FROM fact_survey_responses
WHERE Current_brands = "CodeX"
GROUP BY Taste_experience
ORDER BY Taste_experience DESC;

-- b) Which cities do we need to focus more on ?

SELECT t1.City,count(*)
FROM dim_cities t1
JOIN dim_repondents t2
ON t1.City_ID = t2.City_ID
JOIN fact_survey_responses t3
ON t2.Respondent_ID = t3.Respondent_ID
WHERE t3.Current_brands = "CodeX"
GROUP BY t1.City
ORDER BY count(*) ASC;
