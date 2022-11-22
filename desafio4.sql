SELECT u.username AS "usuario", CASE
	WHEN MAX(YEAR(h.song_played_date)) >= 2021 
		THEN "Usuário ativo"
	ElSE "Usuário inativo" 
END AS "status_usuario"
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h
ON u.user_id = h.user_id
GROUP BY u.username
ORDER BY u.username;
