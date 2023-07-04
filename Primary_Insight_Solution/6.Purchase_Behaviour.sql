-- Q6) Purchase Bahaviour

-- a) Where do respondents prefer to purchase energy drinks?

SELECT Purchase_location,COUNT(*) 
FROM fact_survey_responses
GROUP BY Purchase_location
ORDER BY count(*) DESC;

-- b) What are the typical consumption situations for energy drinks among respondents?

SELECT Typical_consumption_situations,COUNT(*)
FROM fact_survey_responses
GROUP BY Typical_consumption_situations
ORDER BY COUNT(*) DESC;

-- c) What factors influence respondents purchase decisions such as price range and limited edition packaging?

SELECT 
    Limited_edition_packaging,
	COUNT(CASE WHEN Price_range = 'Below 50' THEN Respondent_ID END) AS `Below 50`,
    COUNT(CASE WHEN Price_range = '50-99' THEN Respondent_ID END) AS `50-99`,
    COUNT(CASE WHEN Price_range = '100-150' THEN Respondent_ID END) AS `100-150`,
    COUNT(CASE WHEN Price_range = 'Above 150' THEN Respondent_ID END) AS `Above 150`
FROM fact_survey_responses
GROUP BY Limited_edition_packaging;