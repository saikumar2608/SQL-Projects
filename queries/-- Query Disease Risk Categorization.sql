-- Query: Disease Risk Categorization
-- Author: skc 219
-- Description: Classifies diseases into risk categories based on average mortality rates.
-- Techniques Used: CASE Statements, Aggregations.

SELECT 
    Disease_Name,
    AVG(Mortality_Rate____) AS Avg_Mortality,
    CASE 
        WHEN AVG(Mortality_Rate____) > 10 THEN 'High Risk'
        WHEN AVG(Mortality_Rate____) BETWEEN 5 AND 10 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS Risk_Category
FROM `mysqlproject-459904.data_analysis.kaggle_healthdataset`
GROUP BY Disease_Name
ORDER BY Avg_Mortality DESC;
