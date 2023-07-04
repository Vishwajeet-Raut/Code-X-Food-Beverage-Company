-- Q3) Competition Analysis

-- a) Who are current market leader?

SELECT Current_brands,COUNT(*) AS "users"
FROM fact_survey_responses
GROUP BY Current_brands
ORDER BY users DESC;

-- b) What are the primary reasons consumers prefer those brands over ours?

SELECT t1.Reasons_for_choosing_brands, COUNT(*) AS Preference_Count
FROM fact_survey_responses t1
WHERE t1.Reasons_for_choosing_brands IS NOT NULL
GROUP BY t1.Reasons_for_choosing_brands
ORDER BY Preference_Count DESC;