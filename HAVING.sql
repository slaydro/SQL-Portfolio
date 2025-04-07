SELECT * 
FROM ProjectReadiness
;

SELECT * 
FROM RetailDisplays
;


-- Which product lines have an average engagement score greater than 7.5?
SELECT ProductLine, ROUND(AVG(EngagementScore),2) AS AVG_Engagement_Score
FROM RetailDisplays
Group BY ProductLine 
HAVING AVG(EngagementScore) > 7.5 
;



-- Which status types appear more than once across all retail displays?
SELECT Status, COUNT(*) AS StatusCount
FROM RetailDisplays
GROUP BY Status
HAVING COUNT(*) > 1;


-- Which product lines have a maximum tech health score below 9?
SELECT ProductLine, MAX(TechHealthScore) AS Max_Scores
FROM RetailDisplays
GROUP BY ProductLine
HAVING Max_Scores < 9 
;


