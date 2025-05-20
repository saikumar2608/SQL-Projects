-- Query: Countries with Highest Recovery Rates Despite Low Healthcare Access
-- Author: skc 219
-- Description: Finds countries achieving high recovery rates despite relatively low healthcare access.
-- Techniques Used: CASE Statements, Aggregations.

SELECT 
    Country,
    AVG(Recovery_Rate____) AS Avg_Recovery,
    AVG(Healthcare_Access____) AS Avg_Healthcare_Access,
    CASE 
        WHEN AVG(Healthcare_Access____) < 50.5 THEN 'Low Access'
        WHEN AVG(Healthcare_Access____) BETWEEN 50.5 AND 50.74 THEN 'Moderate Access'
        ELSE 'High Access'
    END AS Access_Level
FROM `mysqlproject-459904.data_analysis.kaggle_healthdataset`
GROUP BY Country
HAVING Access_Level = 'Low Access'
ORDER BY Avg_Recovery DESC
LIMIT 10;
