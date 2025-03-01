## NBA Team Performance and Sponsor Stock Price Analysis

In the 2017–18 NBA season, the NBA introduced the opportunity for teams to sell sponsorships displayed on the front left shoulder of player uniforms. In this project, I examine the relationship between NBA team performance and the success of their sponsors. Specifically, I explore the change in stock price of publicly traded sponsors between the NBA team's playoff gameday and the day after.

### Key Insights:
- A loss by the team negatively impacts the sponsor's stock price, while a win has a small positive effect.
- A loss by a favorite team leads to a more significant drop in the sponsor's stock price.
- No clear trend emerges as teams advance through the playoffs.
- The absolute price response remains consistent as the series progresses, except for Game 7.
- The absolute price response is larger in the final game of the series, regardless of win or loss.
- The stock price response peaks at typical start times for Eastern Conference games, reflecting that sponsors in the data are mainly from Eastern exchanges (NASDAQ, NYSE, TSX).
- The tech-focused NASDAQ exchange shows the most responsive stock price changes.

### Files Included:
- **nba_sponsor_visual.pdf**: My insights and visualizations.
- **nba_sponsor_visual.pbix**: The Power BI file used for creating the visualizations.
- **for_games_dashboard.csv**: The dataset used for generating the visualizations.
- **code**: SQL and Python scripts used to generate the data files.
  - **main_sql.sql**: SQL query used to generate **for_games_dashboard.csv**.
  - **playoff-series-team-code-to-sql.ipynb**: Processes playoff series history and team codes, exporting data to MySQL using `mysql-connector-python` and `SQLAlchemy`.
  - **sponsor.sql**: Generates the sponsor table with relevant information.
  - **stock_data.ipynb**: Retrieves sponsor stock data using the `yfinance` library.
  - **team_sponsor.sql**: Extracts sponsor information for each team from 2018 to 2024.
- **data**: Data sources used in SQL queries.
  - **playoff_series.csv**: Playoff series history (imported from [basketball-reference.com](https://www.basketball-reference.com/playoffs/series.html)).
  - **poffs_games.csv**: Details of every playoff game from 2018 to 2024, imported from Basketball Reference.
  - **poffs_last_game.csv**: Information about the last game of each series.
  - **sponsor_stock_prices.csv**: Stock prices of sponsors from April 2018 to June 2024.

### Tools and Techniques Used:
- **SQL**: Used for writing complex queries, managing multiple tables with `CTE`s, `WINDOW` functions, and `JOINS`.
- **Python**: Used for data processing and analysis with `Pandas`.
- **Power BI**: Used for data visualization.

### Acknowledgments
I heavily relied on the resources available at [Basketball Reference](https://www.basketball-reference.com) for the playoff series history and game data.
