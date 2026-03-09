-- Lista de transações com o produto “Resgatar Ponei”;

-- Minha resolução
SELECT tp.IdTransacao, p.DescNomeProduto
FROM transacao_produto as tp
LEFT JOIN produtos as p
ON tp.IdProduto = p.IdProduto
WHERE p.DescNomeProduto = 'Resgatar Ponei';

-- Resolução no curso (antes de aprender sobre joins)

-- SELECT *
-- FROM transacao_produto
-- WHERE IdProduto = 15;