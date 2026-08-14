-- Receita Total 'Internet' por País

SELECT
	SalesTerritoryCountry AS 'País',
	FORMAT(SUM(UnitPrice), 'C') AS 'Receita Total'
FROM 
	FactInternetSales INNER JOIN DimSalesTerritory
		ON FactInternetSales.SalesTerritoryKey = DimSalesTerritory.SalesTerritoryKey
WHERE YEAR(OrderDate) = 2013
GROUP BY 
	SalesTerritoryCountry 
ORDER BY 
	SUM(UnitPrice) DESC

-- Custo Total 'Internet' por País

SELECT
	SalesTerritoryCountry AS 'País',
	FORMAT(SUM(TotalProductCost), 'C') AS 'Custo Total'
FROM 
	FactInternetSales INNER JOIN DimSalesTerritory
		ON FactInternetSales.SalesTerritoryKey = DimSalesTerritory.SalesTerritoryKey
WHERE YEAR(OrderDate) = 2013
GROUP BY 
	SalesTerritoryCountry 
ORDER BY 
	SUM(UnitPrice) DESC

