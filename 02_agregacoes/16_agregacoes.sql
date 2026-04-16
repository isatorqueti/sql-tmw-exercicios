-- Qual o produto mais transacionado?
SELECT COUNT(tp.IdTransacao) AS qtdTransacao, tp.IdProduto, p.DescNomeProduto
FROM transacao_produto AS tp
LEFT JOIN produtos as p
ON tp.IdProduto = p.IdProduto
GROUP BY 2
ORDER BY 1 DESC
LIMIT 1