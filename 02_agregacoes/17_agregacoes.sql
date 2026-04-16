-- Qual o produto com mais pontos transacionados?
SELECT tp.IdProduto, SUM(tp.vlProduto) as QtdePontos, p.DescNomeProduto
FROM transacao_produto AS tp
LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1