-- Q2) Consumer Preference

-- a) What are the prefered ingredients of energy drinks among respondents?

SELECT Ingredients_expected,COUNT(*)
FROM fact_survey_responses
GROUP BY Ingredients_expected
ORDER BY COUNT(*) DESC
LIMIT 1;

-- b) What packaging preference do respondents have for energy drinks?

SELECT Packaging_preference,COUNT(*)
FROM fact_survey_responses
GROUP BY Packaging_preference
ORDER BY COUNT(*) DESC
LIMIT 1;