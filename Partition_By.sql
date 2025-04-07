SELECT *
FROM RetailDisplays
;


-- How can you display each product line along with its tech health score 
-- and the average tech health score within its region?

SELECT ProductLine, ROUND(AVG(TechHealthScore)
OVER (PARTITION BY Region),2) AS AVG_Tech_Score
FROM RetailDisplays 
; 


-- How would you list each display with its engagement score 
-- and show the rank of that score within its region, from highest to lowest?
SELECT 
  ProductLine, 
  Region,
  EngagementScore,
  RANK() OVER (PARTITION BY Region ORDER BY EngagementScore DESC) AS Region_Rank
FROM RetailDisplays
ORDER BY Region, Region_Rank
;



-- For each status type, how can you list all displays along with the total number
--  of displays that share the same status?
SELECT 
  ProductLine, 
  Status,
COUNT(*) OVER (PARTITION BY Status) AS TotalDisplays
FROM RetailDisplays
;

