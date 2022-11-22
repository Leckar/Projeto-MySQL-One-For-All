SELECT MIN(s.sub_price) AS "faturamento_minimo",
	MAX(s.sub_price) AS "faturamento_maximo",
    ROUND(AVG(s.sub_price), 2) AS "faturamento_medio",
    ROUND(SUM(s.sub_price), 2) AS "faturamento_total"
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.subscriptions AS s
ON u.sub_id = s.sub_id;