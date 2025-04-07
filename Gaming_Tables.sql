CREATE TABLE RetailDisplays (
    DisplayID INT PRIMARY KEY,
    StoreID INT,
    Region VARCHAR(50),
    ProductLine VARCHAR(100),
    InstallDate DATE,
    LastMaintenance DATE,
    Status VARCHAR(20),
    EngagementScore FLOAT,
    TechHealthScore FLOAT
);

-- Sample Data
INSERT INTO RetailDisplays VALUES
(1, 101, 'US - West', 'PixelNova Core Console', '2024-11-10', '2025-03-01', 'Active', 8.7, 9.2),
(2, 102, 'US - East', 'PixelNova Collectibles', '2024-09-15', '2025-02-20', 'Active', 6.5, 7.8),
(3, 201, 'Canada - Ontario', 'PixelNova Core Pro', '2024-10-05', '2025-01-30', 'Needs Repair', 5.4, 4.1),
(4, 202, 'Canada - BC', 'GalaxyRacers Bundle', '2025-01-10', NULL, 'Pending Install', NULL, NULL),
(5, 103, 'US - Midwest', 'Legend of Arka Display', '2024-12-01', '2025-03-20', 'Active', 9.1, 9.5);


SELECT *
FROM RetailDisplays
;


CREATE TABLE ProjectReadiness (
    ProjectID INT PRIMARY KEY,
    DisplayID INT,
    ScheduledDate DATE,
    ContentUpdated BOOLEAN,
    GraphicsUpdated BOOLEAN,
    TechInventoryReady BOOLEAN,
    LaborConfirmed BOOLEAN,
    ComplianceStatus VARCHAR(50)
);

-- Sample Data
INSERT INTO ProjectReadiness VALUES
(1001, 1, '2025-04-05', TRUE, TRUE, TRUE, TRUE, 'Ready'),
(1002, 2, '2025-04-07', TRUE, FALSE, TRUE, TRUE, 'Graphics Pending'),
(1003, 3, '2025-04-10', FALSE, FALSE, FALSE, TRUE, 'Needs Review'),
(1004, 4, '2025-04-15', TRUE, TRUE, FALSE, FALSE, 'Incomplete'),
(1005, 5, '2025-04-12', TRUE, TRUE, TRUE, TRUE, 'Ready');


Select * 
FROM ProjectReadiness
;