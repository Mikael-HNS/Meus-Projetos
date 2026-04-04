use fluxo_de_compras;


-- Tabela com dados dos fornecedores
select * From fornecedor;


-- Quais Fornecedores tem cadastrado por UF
SELECT idFornecedor, Razao_Social, UF FROM fornecedor;


-- Quais fornecedores possuem pedido
SELECT 
    Razao_Social, 
    CNPJ
FROM Fornecedor 
WHERE idFornecedor IN (SELECT DISTINCT idFornecedor FROM Pedido);


-- O que foi comprado, os valores brutos e com descontos
SELECT 
    pp.idPedido AS Nº_Pedido, 
    pp.Descricao AS Produto, 
    pp.Quantidade, 
    pp.Preco_Unitario,
    ROUND((pp.Quantidade * pp.Preco_Unitario), 2) AS Valor_Bruto,
    pp.Desconto_Percentual AS Desconto, 
    ROUND((pp.Quantidade * pp.Preco_Unitario) * (1 - pp.Desconto_Percentual/100), 2) AS Valor_Líquido
FROM Produtos_Pedido pp
WHERE pp.idPedido;


-- Que industria forneque quais produtos
SELECT 
    p.idProduto, 
    p.Descricao,
    p.Principio_Ativo,
    p.Categoria,
    f.Razao_Social AS Fornecedor, 
    f.Fone AS Telefone_Fornecedor
FROM Produto p
JOIN Fornecedor f ON p.idFornecedor = f.idFornecedor;


-- Informações de produtos dentro dos pedidos
SELECT 
    pp.idPedido,
    p.Descricao AS Produto,
    pp.Quantidade,
    f.Nome_Fantasia AS Nome_Fornecedor
FROM Produtos_Pedido pp
INNER JOIN Produto p ON pp.idProduto = p.idProduto
INNER JOIN Fornecedor f ON pp.idFornecedor = f.idFornecedor;


-- Quantos Fornecedores por UF
SELECT 
    UF,
    COUNT(idFornecedor) AS Total_Fornecedores
FROM Fornecedor
GROUP BY UF
ORDER BY Total_Fornecedores DESC;


-- Total de compras por fornecedor
SELECT 
    f.Nome_Fantasia, 
    COUNT(DISTINCT pp.idPedido) AS Total_Pedidos, 
    SUM(pp.Quantidade * pp.Preco_Unitario) AS Volume_Financeiro
FROM Produtos_Pedido pp
JOIN Fornecedor f ON pp.idFornecedor = f.idFornecedor
GROUP BY f.Nome_Fantasia
ORDER BY Volume_Financeiro DESC;


-- Ranking de itens por preço
SELECT 
	fornecedor,
    Descricao,
    Preco_Unitario 
FROM Produto 
WHERE Preco_Unitario > (SELECT AVG(Preco_Unitario) FROM Produto)
ORDER BY Preco_Unitario DESC;


-- Fornecedores que possuem pedidos acima da média
SELECT 
    idFornecedor, 
    SUM(Quantidade * Preco_Unitario) AS Total_Vendido
FROM Produtos_Pedido
GROUP BY idFornecedor
HAVING Total_Vendido > 5000.00;



