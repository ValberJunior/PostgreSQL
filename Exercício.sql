
-- Exercício 01
-- Desenvolva um query que retorne o id e nome de todos os produtos que já necessitam reposição de estoque:

SELECT 
Produto.id_produto AS "Id do Produto",
Produto.ds_produto AS "Descrição do Produto",
COUNT(Produto.id_produto),
Estoque.qt_produto AS "Produtos em Estoque",
SUM(Compra_Cliente.qt_produto) AS "Quantidade total comprada"
FROM Compra_Cliente
JOIN Produto ON Produto.id_produto = Compra_Cliente.id_produto
JOIN Estoque ON Estoque.id_produto = Compra_Cliente.id_produto
GROUP BY 1 , 4
HAVING SUM(Compra_Cliente.qt_produto) > Estoque.qt_produto
ORDER BY 1
;

-- Exercício 02
-- Desenvolva um query que retorne o id e nome do cliente e id e nome dos produtos que ele comprou:

SELECT
Cliente.id_cliente AS "Id do Cliente" ,
Cliente.ds_cliente AS "Nome do Cliente",
Produto.id_produto AS "Id do Produto",
Produto.ds_produto AS "Nome do Produto"
FROM Compra_Cliente
JOIN Produto ON Produto.id_produto = Compra_Cliente.id_produto
JOIN Cliente ON Cliente.id_cliente = Compra_Cliente.id_cliente
GROUP BY 1 , 3
ORDER BY 1
;

-- Exercício 03
-- Desenvolva um query que retorne os produtos que nenhum cliente comprou :

SELECT
Produto.id_produto AS "Id do Produto",
Produto.ds_produto AS "Nome do Produto",
Compra_Cliente.qt_produto AS "Quantidade de Produtos"
FROM Compra_Cliente
RIGHT JOIN Produto ON Produto.id_produto = Compra_Cliente.id_produto
GROUP BY 1, 3
HAVING Compra_Cliente.qt_produto IS NULL
ORDER BY 1
;
 

-- Exercício 04
-- Desenvolva um query que retorne os clientes que ainda não efetuaram nenhum compra :

SELECT
Cliente.id_cliente AS "Id do Cliente",
Cliente.ds_cliente AS "Nome do Cliente",
Compra_Cliente.qt_produto AS "Quantidade de Produtos"
FROM Compra_Cliente
RIGHT JOIN Cliente ON Cliente.id_cliente = Compra_Cliente.id_cliente
GROUP BY 1, 3
HAVING Compra_Cliente.qt_produto IS NULL
ORDER BY 1
;

-- Exercício 05
-- Desenvolva um query que retorne id, quantidade e descrição dos produtos, ordenando do mais vendido ao menos vendido :

SELECT
Produto.id_produto AS "Id do Produto",
Produto.ds_produto AS "Nome do Produto",
COUNT(Produto.id_produto) AS "Número de Compras",
SUM(Compra_Cliente.qt_produto) AS "Quantidade Vendida"
FROM Compra_Cliente
JOIN Produto ON Produto.id_produto = Compra_Cliente.id_produto
GROUP BY 1
ORDER BY 4 DESC
;