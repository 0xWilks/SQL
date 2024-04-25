SELECT 
    Date,
    Ticker,
    Open_Price,
    Close_Price,
    High_Price,
    Low_Price,
    Volume,
    (Close_Price - Open_Price) AS Price_Change
FROM 
    Stock_Price_Data
WHERE 
    Ticker = 'AAPL'
    AND Date BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY 
    Date;
