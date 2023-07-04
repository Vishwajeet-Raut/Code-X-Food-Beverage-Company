-- Q7) Product Development 

-- a) Which area of business should we focus more on our product development?(Branding/Taste/Availabilty) 

SELECT 
    Current_brands,
    COUNT(CASE WHEN Reasons_for_choosing_brands = 'Brand reputation' THEN Respondent_ID END) AS `Brand reputation`,
    COUNT(CASE WHEN Reasons_for_choosing_brands = 'Taste/flavor preference' THEN Respondent_ID END) AS `Taste/flavour preference`,
    COUNT(CASE WHEN Reasons_for_choosing_brands = 'Availability' THEN Respondent_ID END) AS `Availability`,
    COUNT(CASE WHEN Reasons_for_choosing_brands = 'Effectiveness' THEN Respondent_ID END) AS `Effectiveness`,
    COUNT(CASE WHEN Reasons_for_choosing_brands = 'Other' THEN Respondent_ID END) AS `Other`
FROM fact_survey_responses
GROUP BY Current_brands;

