-- Q4) Marketing Channels & Brand Awareness

-- a) Which marketing channel can be used to reach more customers?

SELECT Marketing_channels, COUNT(*) AS Reach_Count
FROM fact_survey_responses
WHERE Marketing_channels IS NOT NULL
GROUP BY Marketing_channels
ORDER BY Reach_Count DESC;

-- b) How effective are different marketing strategies and channels in reaching our customers?

SELECT Marketing_channels, COUNT(*) AS Reach_Count
FROM fact_survey_responses
WHERE Marketing_channels IS NOT NULL
GROUP BY Marketing_channels
ORDER BY Reach_Count DESC;
