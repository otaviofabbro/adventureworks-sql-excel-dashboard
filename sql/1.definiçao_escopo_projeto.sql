-- ##################################################
--     PROJETO DE INTEGRAÇÃO SQL SERVER e EXCEL
-- ##################################################

-- 1. Apresentação


-- 2. Download Banco de Dados AdventureWorks 2014

/*
https://docs.microsoft.com/pt-br/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms
*/

-- 3. Definindo os indicadores do projeto

-- i) Total de Vendas Internet por Categoria do Produto
-- ii) Receita Total Internet por Mês do Pedido
-- iii) Receita e Custo Total Internet por País
-- iv) Total de Vendas Internet por Sexo do Cliente

-- OBS: O ANO DE ANÁLISE SERÁ APENAS 2013 (ANO DO PEDIDO)


-- 4. Definindo as tabelas a serem analisadas

-- TABELA 1: FactInternetSales
-- TABELA 2: DimCustomer
-- TABELA 3: DimSalesTerritory
-- TABELA 4: DimProductCategory ***


-- 5. Definindo as colunas da view VENDAS_INTERNET


-- VIEW FINAL VENDAS_INTERNET

-- Colunas:

-- SalesOrderNumber                (TABELA 1: FactInternetSales)
-- OrderDate                       (TABELA 1: FactInternetSales)
-- EnglishProductCategoryName      (TABELA 4: DimProductCategory)
-- FirstName + LastName            (TABELA 2: DimCustomer)
-- Gender                          (TABELA 2: DimCustomer)
-- SalesTerritoryCountry           (TABELA 3: DimSalesTerritory)
-- OrderQuantity                   (TABELA 1: FactInternetSales)
-- TotalProductCost                (TABELA 1: FactInternetSales)
-- SalesAmount                     (TABELA 1: FactInternetSales)


-- 6. Criando o código da view VENDAS_INTERNET

-- i) Total de Vendas Internet por Categoria do Produto
-- ii) Receita Total Internet por Mês do Pedido
-- iii) Receita e Custo Total Internet por País
-- iv) Total de Vendas Internet por Sexo do Cliente

-- OBS: O ANO DE ANÁLISE SERÁ APENAS 2013 (ANO DO PEDIDO)

