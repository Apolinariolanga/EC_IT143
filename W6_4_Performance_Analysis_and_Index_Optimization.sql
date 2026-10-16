USE AdventureWorks2022;
GO

/* ====================================================
   QUERY 1 - Person.Person
   ==================================================== */

-- Enable Actual Execution Plan before running

SELECT *
FROM Person.Person
WHERE FirstName = 'John';
GO

/*
Review Execution Plan:
- Note estimated subtree cost
- Check for missing index recommendation
*/

CREATE NONCLUSTERED INDEX IX_Person_FirstName
ON Person.Person (FirstName);
GO

-- Run again after creating the index

SELECT *
FROM Person.Person
WHERE FirstName = 'John';
GO


/* ====================================================
   QUERY 2 - Production.Product
   ==================================================== */

SELECT *
FROM Production.Product
WHERE Color = 'Black';
GO

/*
Review Execution Plan:
- Note estimated subtree cost
- Check for missing index recommendation
*/

CREATE NONCLUSTERED INDEX IX_Product_Color
ON Production.Product (Color);
GO

-- Run again after creating the index

SELECT *
FROM Production.Product
WHERE Color = 'Black';
GO