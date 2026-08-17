-- Criação VIEW para análise dos KPIs

CREATE OR ALTER VIEW VENDAS_INTERNET AS
SELECT
SalesOrderNumber AS 'Nº PEDIDO',
OrderDate AS 'DATA PEDIDO',
EnglishProductCategoryName AS 'CATEGORIA PRODUTO',
FirstName + ' ' + LastName AS 'NOME CLIENTE',
Gender AS 'GÊNERO',
SalesTerritoryCountry AS 'PAÍS',
OrderQuantity AS 'QTD. VENDIDA',
TotalProductCost AS 'CUSTO VENDA',
SalesAmount AS 'RECEITA VENDA'
FROM FactInternetSales fis
INNER JOIN DimProduct dp ON fis.ProductKey = dp.ProductKey
	INNER JOIN DimProductSubcategory dps ON dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
		INNER JOIN DimProductCategory dpc ON dps.ProductCategoryKey = dpc.ProductCategoryKey
			INNER JOIN DimCustomer dc ON fis.CustomerKey = dc.CustomerKey
				INNER JOIN DimSalesTerritory dst ON fis.SalesTerritoryKey = dst.SalesTerritoryKey
WHERE YEAR(OrderDate) = 2013

SELECT * FROM VENDAS_INTERNET