SELECT *
FROM ProjectReadiness
;

SELECT *
FROM RetailDisplays
;

-- CASE STATEMENT #1
-- How can you list each product line along with a label that categorizes the tech health 
-- score as 'Excellent' (≥9), 'Moderate' (between 6 and 8.99), or 'Poor' (<6)?

SELECT ProductLine, TechHealthScore,
CASE
	WHEN TechHealthScore >= 9 THEN 'Excellent' 
    WHEN TechHealthScore BETWEEN 6 AND 8.99 THEN 'Moderate' 
    ELSE 'Poor' 
END AS HealthCategory
FROM RetailDisplays
Order BY TechHealthScore ASC
;



-- CASE STATEMENT #2 
-- How would you write a query to list each product line along with a new column
-- called DisplayPriority that categorizes displays as:
-- 'High Priority' if the status is 'Needs Repair' or the EngagementScore is less than 6
-- 'Normal Priority' if the status is 'Active' and the EngagementScore is between 6 and 8.99
-- 'Low Priority' if the status is 'Active' and the EngagementScore is 9 or higher
-- 'Pending Review' for all other cases (e.g. NULL values)

SELECT ProductLine, Status, EngagementScore,
CASE
	WHEN Status = 'Needs Repair' OR EngagementScore < 6 THEN 'High Priority'
    WHEN Status = 'Active' AND EngagementScore Between 6 AND 8.99 THEN 'Normal Priority'
    WHEN Status = 'Active' AND EngagementScore > 9 THEN 'Low Priority' 
    ELSE 'Pending Review' 
END AS DisplayPriority
FROM RetailDisplays
ORDER BY EngagementScore ASC 
;