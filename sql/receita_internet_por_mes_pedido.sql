-- Receita Total 'Internet' por Mês do Pedido

SELECT
	DATEPART(m,OrderDate) AS M,
	DATENAME(m,OrderDate) AS 'Mês',
	FORMAT(SUM(UnitPrice), 'C') AS 'Receita Total'
FROM 
	FactInternetSales
WHERE YEAR(OrderDate) = 2013
GROUP BY 
	DATEPART(m,OrderDate), DATENAME(m,OrderDate)
ORDER BY 
	DATEPART(m,OrderDate) 