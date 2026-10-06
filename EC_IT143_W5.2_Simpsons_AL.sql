/******************************************************************************
NAME: Apolinario Langa
ASSIGNMENT: W5.2 My Communities Analysis
COMMUNITY: Simpsons
******************************************************************************/

USE Simpsons;
GO

/**************************************************************************
Question 1
Author: Apolinario Langa

What is the total amount spent by each card member?
**************************************************************************/

SELECT
    Card_Member,
    SUM(Amount) AS TotalSpent
FROM Planet_Express
GROUP BY Card_Member
ORDER BY TotalSpent DESC;



/**************************************************************************
Question 2
Author: Apolinario Langa

Which category has the highest total spending?
**************************************************************************/

SELECT
    Category,
    SUM(Amount) AS TotalSpent
FROM Planet_Express
GROUP BY Category
ORDER BY TotalSpent DESC;



/**************************************************************************
Question 3
Author: Daniel Oluwafemi Solomon

How many transactions does each card member have?
**************************************************************************/

SELECT
    Card_Member,
    COUNT(*) AS TransactionCount
FROM Planet_Express
GROUP BY Card_Member
ORDER BY TransactionCount DESC;



/**************************************************************************
Question 4
Author: Apolinario Langa

How many transactions exist in each status?
**************************************************************************/

SELECT
    Status,
    COUNT(*) AS TransactionCount
FROM FBS_Viza_Costmo
GROUP BY Status
ORDER BY TransactionCount DESC;