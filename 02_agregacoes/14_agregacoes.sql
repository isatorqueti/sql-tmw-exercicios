-- Qual o valor médio de pontos positivos por dia?
# Agregação por dia

SELECT substr(DtCriacao, 1, 10) as Dia, AVG(QtdePontos) as MédiaPontos
FROM transacoes
WHERE QtdePontos > 0
GROUP BY 1
ORDER BY 2 DESC

# Valor único médio

SELECT COUNT(DISTINCT substr(DtCriacao, 1, 10)) as QtdDias, SUM(QtdePontos) as SomaPontos, SUM(QtdePontos) / COUNT(DISTINCT substr(DtCriacao, 1, 10)) as MédiaPontosDia
FROM transacoes
WHERE QtdePontos > 0