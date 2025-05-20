-- Query: Top 5 Deadliest Diseases by Year and Region
-- Author: skc 219
-- Description: Identifies top 5 deadliest diseases for each country and year based on mortality rate.
-- Techniques Used: CTE, Window Functions (RANK), Aggregations.

WITH Disease_Rank AS (
    SELECT 
        Country, 
        Year, 
        Disease_Name, 
        AVG(Mortality_Rate____) AS Avg_Mortality,
        RANK() OVER (PARTITION BY Year, Country ORDER BY AVG(Mortality_Rate____) DESC) AS Mortality_Rank
    FROM `mysqlproject-459904.data_analysis.kaggle_healthdataset`
    GROUP BY Country, Year, Disease_Name
)
SELECT * 
FROM Disease_Rank 
WHERE Mortality_Rank <= 5;
