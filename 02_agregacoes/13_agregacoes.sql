-- Quantos produtos são de rpg?

SELECT DescCategoriaProduto, count(DescCategoriaProduto) AS qtdPorCategoria
FROM produtos
GROUP BY 1
