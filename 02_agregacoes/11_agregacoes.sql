-- Qual cliente juntou mais pontos positivos em 2025-05?

SELECT idCliente, SUM(QtdePontos) AS sumPontos
FROM transacoes
WHERE qtdePontos > 0
AND substr(DtCriacao, 1, 10) >= '2025-05-01'
AND substr(DtCriacao, 1, 10) <= '2025-05-31'
GROUP BY 1
ORDER BY SUM(QtdePontos) DESC
LIMIT 1