-- Total de Vendas 'Internet' por Categoria

SELECT
	EnglishProductCategoryName AS 'Categoria do Produto',
	FORMAT(COUNT(*), 'N0', 'pt-BR') AS 'Total de Produtos'
FROM 
	FactInternetSales INNER JOIN DimProduct
	ON FactInternetSales.ProductKey = DimProduct.ProductKey
	INNER JOIN DimProductSubcategory
		ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
		INNER JOIN DimProductCategory
			ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
WHERE YEAR(OrderDate) = 2013
GROUP BY
	EnglishProductCategoryName
ORDER BY
	COUNT(*) DESC

