SELECT 
    Portfolio_Name,
    AVG(Return) AS Average_Return,
    STDDEV(Return) AS Risk,
    AVG(Return) / STDDEV(Return) AS Sharpe_Ratio
FROM 
    Portfolio_Performance
GROUP BY 
    Portfolio_Name;
