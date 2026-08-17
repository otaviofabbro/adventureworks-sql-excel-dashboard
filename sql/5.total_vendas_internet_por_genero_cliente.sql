-- Total de Vendas Internet por Gênero do Cliente

SELECT
REPLACE(REPLACE(Gender, 'M', 'Masculino'), 'F', 'Feminino') AS 'Gênero',
FORMAT(COUNT(*), 'N0') AS 'Total de Vendas'
FROM FactInternetSales INNER JOIN DimCustomer
	ON FactInternetSales.CustomerKey = DimCustomer.CustomerKey
WHERE YEAR(OrderDate) = 2013
GROUP BY
	Gender
ORDER BY
	[Total de Vendas] DESC
