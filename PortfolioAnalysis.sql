SELECT 
    Portfolio_Name,
    SUM(Position_Value) AS Total_Value,
    SUM(CASE WHEN Position_Type = 'Equity' THEN Position_Value ELSE 0 END) AS Equity_Value,
    SUM(CASE WHEN Position_Type = 'Bond' THEN Position_Value ELSE 0 END) AS Bond_Value,
    SUM(CASE WHEN Position_Type = 'Cash' THEN Position_Value ELSE 0 END) AS Cash_Value
FROM 
    Portfolio_Positions
GROUP BY 
    Portfolio_Name;
