-- Query: Impact of Urbanization and Per Capita Income on Mortality
-- Author: skc 219
-- Description: Calculates correlation between urbanization, income, and mortality to assess socioeconomic health impacts.
-- Techniques Used: CORR Function, Statistical Analysis.

SELECT 
    Country, 
    CORR(Urbanization_Rate____, Mortality_Rate____) AS Urbanization_Mortality_Correlation,
    CORR(Per_Capita_Income__USD_, Mortality_Rate____) AS Income_Mortality_Correlation
FROM `mysqlproject-459904.data_analysis.kaggle_healthdataset`
GROUP BY Country;
