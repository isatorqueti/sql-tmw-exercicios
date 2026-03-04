-- Lista de pedidos realizados no fim de semana;

SELECT IdTransacao, DtCriacao, strftime('%w', (substr(DtCriacao, 1, 10))) AS DiaDaSemana
FROM transacoes
WHERE DiaDaSemana IN ('0', '6');
