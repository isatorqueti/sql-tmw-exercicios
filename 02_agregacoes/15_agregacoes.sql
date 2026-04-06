-- Qual dia da semana tem mais pedidos em 2025?

SELECT CASE strftime('%w', substr(DtCriacao, 1, 10))
        WHEN '0' THEN 'Domingo'
        WHEN '1' THEN 'Segunda-feira'
        WHEN '2' THEN 'Terça-feira'
        WHEN '3' THEN 'Quarta-feira'
        WHEN '4' THEN 'Quinta-feira'
        WHEN '5' THEN 'Sexta-feira'
        ELSE 'Sábado'
        END AS DiaSemana, 
        COUNT(IdTransacao) as QtdPedidos
FROM transacoes
WHERE substr(DtCriacao, 1, 4) >= '2025'
GROUP BY 1
ORDER BY 2 DESC