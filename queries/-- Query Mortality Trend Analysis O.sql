-- Query: Mortality Trend Analysis Over Years
-- Author: skc 219
-- Description: Analyzes whether mortality rates have improved over time using window functions.
-- Techniques Used: LAG Function, Window Functions.

SELECT 
    Country, 
    Disease_Name, 
    Year, 
    Mortality_Rate____, 
    LAG(Mortality_Rate____) OVER (PARTITION BY Country, Disease_Name ORDER BY Year) AS Prev_Year_Mortality,
    Mortality_Rate____ - LAG(Mortality_Rate____) OVER (PARTITION BY Country, Disease_Name ORDER BY Year) AS Mortality_Change
FROM `mysqlproject-459904.data_analysis.kaggle_healthdataset`;
