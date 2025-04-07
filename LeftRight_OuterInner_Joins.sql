-- INNER JOIN
-- Which active retail displays have a 
-- compliance status of "Ready" in their corresponding project readiness records?

SELECT * 
FROM ProjectReadiness
;

SELECT *
FROM RetailDisplays
;


SELECT * 
FROM ProjectReadiness
Inner JOIN RetailDisplays
ON ProjectReadiness.DisplayID = RetailDisplays.DisplayID
WHERE ComplianceStatus = 'Ready' 
;


-- LEFT JOIN
-- Show a list of all product lines and their most recent maintenance date, 
-- along with their scheduled project date if one exists.

SELECT ProductLine, MAX(LastMaintenance) AS RecentMaintenance
FROM RetailDisplays
Left JOIN ProjectReadiness
ON ProjectReadiness.DisplayID = RetailDisplays.DisplayID
GROUP BY ProductLine
Order BY RecentMaintenance 
;


-- RIGHT JOIN
-- Find all projects scheduled after April 10, 2025,
--  and display their associated product lines (if available).

SELECT ProductLine, ScheduledDate
FROM ProjectReadiness
RIGHT JOIN RetailDisplays
ON ProjectReadiness.DisplayID = RetailDisplays.DisplayID
WHERE ScheduledDate > '2025-04-10' OR ScheduledDate is NULL 
;



-- FULL OUTER JOIN (UNION)
-- Retrieve a complete list of all display and project combinations, 
-- ensuring you include displays without projects and projects without displays.

SELECT *
FROM ProjectReadiness
LEFT JOIN RetailDisplays 
ON ProjectReadiness.DisplayID = RetailDisplays.DisplayID

UNION 

SELECT *
FROM ProjectReadiness
RIGHT JOIN RetailDisplays
ON ProjectReadiness.DisplayID = RetailDisplays.DisplayID
;



