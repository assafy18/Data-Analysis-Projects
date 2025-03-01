USE nba;

-- CTE with the information on the series level
WITH cte1 AS (
SELECT 
 team_code.t_code AS team_code, temp.team, temp.opponent, temp.year, temp.last_game_date, temp.series, temp.series_id, temp.result,
 CASE WHEN team_code.t_code = temp.favorite THEN 'Favorite'
 ELSE 'Underdog' END AS expect,
 CASE WHEN temp.series LIKE '%Conf First Round' THEN 'First Round'
    WHEN temp.series LIKE '%Conf Semifinals' THEN 'Conference Semi Final'
    WHEN temp.series LIKE '%Conf Finals' THEN 'Conference Final'
    ELSE 'Final' END
    AS `round`
 FROM (
(SELECT team_w AS team,
			team_l AS opponent,
            year,
            end_date AS last_game_date,
            series,
            series_id,
            'W' AS result,
            favorite,
            underdog
     FROM playoff_series)
    UNION ALL
    (SELECT team_l AS team,
			team_w AS opponent,
            year,
            end_date AS last_game_date,
            series,
            series_id,
            'L' AS result,
            favorite,
            underdog
     FROM playoff_series)
     ) temp
LEFT JOIN team_code ON temp.team = team_code.team),

-- CTE with the ordinal number of the games with each series
cte_rank AS (
SELECT poffs_games.team_code, poffs_games.date,
cte1.series_id,
RANK() OVER(PARTITION BY poffs_games.team_code, cte1.series_id ORDER BY poffs_games.date) as game_order
 FROM poffs_games
 LEFT JOIN cte1 ON poffs_games.team_code = cte1.team_code AND poffs_games.opponent = cte1.opponent AND year(poffs_games.date) = cte1.year
 )
 
 -- #################################################################### --

SELECT 
poffs_games.team_code,
cte1.team,
cte1.opponent,
cte1.series_id,
cte1.year,
DATE_FORMAT(poffs_games.date, '%Y-%m-%d') AS date,
DAYNAME(DATE_FORMAT(poffs_games.date, '%Y-%m-%d')) AS day_name,
cte_rank.game_order,
STR_TO_DATE(poffs_games.start_h_et, '%H:%i') AS start_h_et,
STR_TO_DATE(poffs_games.end_h_et, '%H:%i') AS end_h_et,
poffs_games.log_mins,
CASE WHEN
	poffs_games.tm > poffs_games.opp THEN 'W'
    ELSE 'L' END
    AS result,
cte1.round,
cte1.result AS series_result,
DATE_FORMAT(cte1.last_game_date, '%Y-%m-%d') AS last_game_date,
CASE WHEN 
	poffs_games.date = cte1.last_game_date THEN 1
    ELSE 0 END
    AS last_game,
cte1.expect,
spo.*,
DATE_FORMAT(sto1.date, '%Y-%m-%d') AS close_date, sto1.close AS close_price0,
DATE_FORMAT(sto2.date, '%Y-%m-%d') AS open_date, sto2.open AS open_price1,
100*((sto2.open - sto1.close)/sto1.close) AS delta_pct,
100*ABS((sto2.open - sto1.close)/sto1.close) AS delta_pct_abs,
CASE WHEN cte1.series LIKE 'Eastern%' THEN 'East'
    WHEN cte1.series LIKE 'Western%' THEN 'West'
    ELSE NULL END
	AS game_conf,
CASE WHEN 
	poffs_games.team_code IN ('ATL', 'BOS', 'BRK', 'CHO', 'CHI', 'CLE', 'GSW', 'IND', 
    'MIA', 'MIL', 'NYK', 'ORL', 'PHI', 'TOR', 'WAS') THEN 'East'
    ELSE 'West' END
    AS team_conf
    
 FROM poffs_games
LEFT JOIN cte1 ON poffs_games.team_code = cte1.team_code AND poffs_games.opponent = cte1.opponent AND year(poffs_games.date) = cte1.year

-- Add the ordinal number of the game within the series
LEFT JOIN cte_rank ON poffs_games.team_code = cte_rank.team_code AND poffs_games.date = cte_rank.date

-- Add the sponsor of the team in each year
LEFT JOIN team_sponsor t_spo ON cte1.team = t_spo.team AND cte1.year = t_spo.year
-- Add the sponsor details
LEFT JOIN sponsor spo ON t_spo.sponsor = spo.sponsor

-- Stock prices
-- Close price of the stock in the day of the game
--  want the same date to isolate the effect of the game as much as possible. Thus, I do not use data from previous days
JOIN stock sto1
    ON spo.stock_symbol = sto1.stock_symbol
    AND sto1.date = (
        SELECT MAX(date)
        FROM stock s
        WHERE s.stock_symbol = spo.stock_symbol
          AND s.date = poffs_games.date
    )
    
-- Open price of the stock in the business day after the series ends
JOIN stock sto2
    ON spo.stock_symbol = sto2.stock_symbol
    AND sto2.date = (
        SELECT MIN(date)
        FROM stock s
        WHERE s.stock_symbol = spo.stock_symbol
          AND DATEDIFF(s.date, poffs_games.date) = 1
    )

-- Filtering
WHERE
-- Sponsors that are on North American stock exchanges
-- The other sponsors are from Japan and South Korea, but they are mostly irrelevant because the games start during the business day in their stock exchanges.
spo.stock_exchange IN ('NYSE', 'NASDAQ', 'TSX')

-- Keep games that started after the close time of the relevant exchange: for ('NYSE', 'NASDAQ', 'TSX') it is 4PM
AND poffs_games.start_h_et > '16:00:00'

-- Sort
ORDER BY cte1.team, poffs_games.date;