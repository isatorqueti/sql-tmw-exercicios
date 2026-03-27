-- Qual cliente fez mais transações no ano de 2024?

SELECT IdCliente, count(IdTransacao) AS qtdTransacoes
FROM transacoes
WHERE substr(DtCriacao, 1, 10) >= '2024-01-01'
AND substr(DtCriacao, 1, 10) <= '2024-12-01'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1