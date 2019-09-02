IF ( (SELECT OBJECT_ID('[SalesLT].[ProductCostPriceHistory]', 'U')) IS NOT NULL)
BEGIN
    DROP TABLE [SalesLT].[ProductCostPriceHistory]
    PRINT 'Existing [SalesLT].[ProductCostPriceHistory] table dropped'
END
GO

CREATE TABLE [SalesLT].[ProductCostPriceHistory](
	[CostPriceHistoryID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ProductCostPriceHistory_CostPriceHistoryID]  DEFAULT (newid()),
	[ProductID] [int] NOT NULL,
	[StandardCost] [money] NOT NULL,
	[ListPrice] [money] NOT NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_SalesLT.ProductCostPriceHistory] PRIMARY KEY CLUSTERED 
(
	[CostPriceHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
PRINT 'New [SalesLT].[ProductCostPriceHistory] table created'

TRUNCATE TABLE SalesLT.ProductCostPriceHistory
GO

INSERT INTO SalesLT.ProductCostPriceHistory
SELECT
    NEWID()
    ,p.ProductID
    ,StandardCost * randomPercentageIncrease AS oldCost
    ,ListPrice * randomPercentageIncrease AS oldPrice
    ,CAST(GETDATE() - daysAgo AS DATE)--1 to 3 days ago
FROM SalesLT.Product p JOIN
    (SELECT TOP 100
         ProductID
        ,1 + (CAST(ABS(CHECKSUM(NEWID())) % 5 AS MONEY) + 1)/10 AS randomPercentageIncrease
        ,1 + ABS(CHECKSUM(NEWID())) % 3 AS daysAgo
    FROM SalesLT.Product
    ORDER BY NEWID()) rdm ON p.ProductID = rdm.ProductID
UNION
SELECT
    NEWID()
    ,p.ProductID
    ,StandardCost * randomPercentageIncrease AS oldCost
    ,ListPrice * randomPercentageIncrease AS oldPrice
    ,CAST(GETDATE() - daysAgo AS DATE)--4 to 7 days ago
FROM SalesLT.Product p JOIN
    (SELECT TOP 100
         ProductID
        ,1 + (CAST(ABS(CHECKSUM(NEWID())) % 5 AS MONEY) + 1)/10 AS randomPercentageIncrease
        ,4 + ABS(CHECKSUM(NEWID())) % 4 AS daysAgo
    FROM SalesLT.Product
    ORDER BY NEWID()) rdm ON p.ProductID = rdm.ProductID
GO

INSERT INTO SalesLT.ProductCostPriceHistory
SELECT
    NEWID()
    ,p.ProductID
    ,p.StandardCost
    ,p.ListPrice
    ,NULL --current cost and price
FROM SalesLT.Product p
WHERE ProductID IN (SELECT ProductID FROM SalesLT.ProductCostPriceHistory)
GO

PRINT 'Random rows inserted'