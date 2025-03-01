USE nba;

DROP TABLE IF EXISTS team_sponsor;
CREATE TABLE team_sponsor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    team VARCHAR(100),
    season VARCHAR(20),
    sponsor VARCHAR(255)
);

-- Insert sponsor data for all teams
-- Atlanta Hawks
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Atlanta Hawks', '2017-2018', 'Sharecare'),
('Atlanta Hawks', '2018-2019', 'Sharecare'),
('Atlanta Hawks', '2019-2020', 'Sharecare'),
('Atlanta Hawks', '2020-2021', 'Sharecare'),
('Atlanta Hawks', '2021-2022', 'Sharecare'),
('Atlanta Hawks', '2022-2023', 'Sharecare'),
('Atlanta Hawks', '2023-2024', 'YMCA (the Y)'),
('Atlanta Hawks', '2024-2025', 'YMCA (the Y)');

-- Boston Celtics
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Boston Celtics', '2017-2018', 'General Electric'),
('Boston Celtics', '2018-2019', 'General Electric'),
('Boston Celtics', '2019-2020', 'General Electric'),
('Boston Celtics', '2020-2021', 'Vistaprint'),
('Boston Celtics', '2021-2022', 'Vistaprint'),
('Boston Celtics', '2022-2023', 'Vistaprint'),
('Boston Celtics', '2023-2024', 'Vistaprint'),
('Boston Celtics', '2024-2025', 'Amica Mutual Insurance');

-- Brooklyn Nets
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Brooklyn Nets', '2017-2018', 'Infor'),
('Brooklyn Nets', '2018-2019', 'Infor'),
('Brooklyn Nets', '2019-2020', 'Infor'),
('Brooklyn Nets', '2020-2021', 'Motorola'),
('Brooklyn Nets', '2021-2022', 'Webull'),
('Brooklyn Nets', '2022-2023', 'Webull'),
('Brooklyn Nets', '2023-2024', 'Webull'),
('Brooklyn Nets', '2024-2025', 'GetYourGuide');

-- Charlotte Hornets
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Charlotte Hornets', '2017-2018', 'LendingTree'),
('Charlotte Hornets', '2018-2019', 'LendingTree'),
('Charlotte Hornets', '2019-2020', 'LendingTree'),
('Charlotte Hornets', '2020-2021', 'LendingTree'),
('Charlotte Hornets', '2021-2022', 'LendingTree'),
('Charlotte Hornets', '2022-2023', 'LendingTree'),
('Charlotte Hornets', '2023-2024', 'Feastables'),
('Charlotte Hornets', '2024-2025', 'Feastables');

-- Chicago Bulls
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Chicago Bulls', '2017-2018', 'Zenni Optical (Zenni)'),
('Chicago Bulls', '2018-2019', 'Zenni Optical (Zenni)'),
('Chicago Bulls', '2019-2020', 'Zenni Optical (Zenni)'),
('Chicago Bulls', '2020-2021', 'Zenni Optical (Zenni)'),
('Chicago Bulls', '2021-2022', 'Zenni Optical (Zenni)'),
('Chicago Bulls', '2022-2023', 'Motorola'),
('Chicago Bulls', '2023-2024', 'Motorola'),
('Chicago Bulls', '2024-2025', 'Motorola');

-- Cleveland Cavaliers
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Cleveland Cavaliers', '2017-2018', 'Goodyear Tires'),
('Cleveland Cavaliers', '2018-2019', 'Goodyear Tires'),
('Cleveland Cavaliers', '2019-2020', 'Goodyear Tires'),
('Cleveland Cavaliers', '2020-2021', 'Goodyear Tires'),
('Cleveland Cavaliers', '2021-2022', 'Goodyear Tires'),
('Cleveland Cavaliers', '2022-2023', 'Cleveland-Cliffs Inc. (CLIFFS)'),
('Cleveland Cavaliers', '2023-2024', 'Cleveland-Cliffs Inc. (CLIFFS)'),
('Cleveland Cavaliers', '2024-2025', 'Cleveland-Cliffs Inc. (CLIFFS)');

-- Dallas Mavericks
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Dallas Mavericks', '2017-2018', '5miles'),
('Dallas Mavericks', '2018-2019', '5miles'),
('Dallas Mavericks', '2019-2020', 'Chime'),
('Dallas Mavericks', '2020-2021', 'Chime'),
('Dallas Mavericks', '2021-2022', 'Chime'),
('Dallas Mavericks', '2022-2023', 'Chime'),
('Dallas Mavericks', '2023-2024', 'Chime'),
('Dallas Mavericks', '2024-2025', 'Chime');

-- Denver Nuggets
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Denver Nuggets', '2017-2018', 'Western Union'),
('Denver Nuggets', '2018-2019', 'Western Union'),
('Denver Nuggets', '2019-2020', 'Western Union'),
('Denver Nuggets', '2020-2021', 'Western Union'),
('Denver Nuggets', '2021-2022', 'Western Union'),
('Denver Nuggets', '2022-2023', 'Western Union'),
('Denver Nuggets', '2023-2024', 'Ibotta'),
('Denver Nuggets', '2024-2025', 'Ibotta');

-- Detroit Pistons
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Detroit Pistons', '2017-2018', 'Flagstar Bank'),
('Detroit Pistons', '2018-2019', 'Flagstar Bank'),
('Detroit Pistons', '2019-2020', 'Flagstar Bank'),
('Detroit Pistons', '2020-2021', 'Flagstar Bank'),
('Detroit Pistons', '2021-2022', 'United Wholesale Mortgage'),
('Detroit Pistons', '2022-2023', 'United Wholesale Mortgage'),
('Detroit Pistons', '2023-2024', 'United Wholesale Mortgage'),
('Detroit Pistons', '2024-2025', 'StockX');

-- Golden State Warriors
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Golden State Warriors', '2017-2018', 'Rakuten'),
('Golden State Warriors', '2018-2019', 'Rakuten'),
('Golden State Warriors', '2019-2020', 'Rakuten'),
('Golden State Warriors', '2020-2021', 'Rakuten'),
('Golden State Warriors', '2021-2022', 'Rakuten'),
('Golden State Warriors', '2022-2023', 'Rakuten'),
('Golden State Warriors', '2023-2024', 'Rakuten'),
('Golden State Warriors', '2024-2025', 'Rakuten');

-- Houston Rockets
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Houston Rockets', '2017-2018', 'ROKiT Phones (ROKiT)'),
('Houston Rockets', '2018-2019', 'ROKiT Phones (ROKiT)'),
('Houston Rockets', '2019-2020', 'ROKiT Phones (ROKiT)'),
('Houston Rockets', '2020-2021', 'ROKiT Phones (ROKiT)'),
('Houston Rockets', '2021-2022', 'Credit Karma'),
('Houston Rockets', '2022-2023', 'Credit Karma'),
('Houston Rockets', '2023-2024', 'Credit Karma'),
('Houston Rockets', '2024-2025', 'Memorial Hermann Health System');

-- Indiana Pacers
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Indiana Pacers', '2017-2018', 'Motorola'),
('Indiana Pacers', '2018-2019', 'Motorola'),
('Indiana Pacers', '2019-2020', 'Motorola'),
('Indiana Pacers', '2020-2021', 'Motorola'),
('Indiana Pacers', '2021-2022', 'Motorola'),
('Indiana Pacers', '2022-2023', 'Motorola'),
('Indiana Pacers', '2023-2024', 'Spokenote'),
('Indiana Pacers', '2024-2025', 'Spokenote');

-- Los Angeles Clippers
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Los Angeles Clippers', '2017-2018', 'Bumble'),
('Los Angeles Clippers', '2018-2019', 'Bumble'),
('Los Angeles Clippers', '2019-2020', 'Bumble'),
('Los Angeles Clippers', '2020-2021', 'Honey'),
('Los Angeles Clippers', '2021-2022', 'Honey'),
('Los Angeles Clippers', '2022-2023', 'Honey'),
('Los Angeles Clippers', '2023-2024', 'Honey'),
('Los Angeles Clippers', '2024-2025', NULL);

-- Los Angeles Lakers
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Los Angeles Lakers', '2017-2018', 'Wish'),
('Los Angeles Lakers', '2018-2019', 'Wish'),
('Los Angeles Lakers', '2019-2020', 'Wish'),
('Los Angeles Lakers', '2020-2021', 'Wish'),
('Los Angeles Lakers', '2021-2022', 'Bibigo'),
('Los Angeles Lakers', '2022-2023', 'Bibigo'),
('Los Angeles Lakers', '2023-2024', 'Bibigo'),
('Los Angeles Lakers', '2024-2025', 'Bibigo');

-- Memphis Grizzlies
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Memphis Grizzlies', '2017-2018', 'FedEx'),
('Memphis Grizzlies', '2018-2019', 'FedEx'),
('Memphis Grizzlies', '2019-2020', 'FedEx'),
('Memphis Grizzlies', '2020-2021', 'FedEx'),
('Memphis Grizzlies', '2021-2022', 'Robinhood'),
('Memphis Grizzlies', '2022-2023', 'Robinhood'),
('Memphis Grizzlies', '2023-2024', 'Robinhood'),
('Memphis Grizzlies', '2024-2025', 'Robinhood');

-- Miami Heat
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Miami Heat', '2017-2018', 'Ultimate Software'),
('Miami Heat', '2018-2019', 'Ultimate Software'),
('Miami Heat', '2019-2020', 'Ultimate Software'),
('Miami Heat', '2020-2021', 'UKG'),
('Miami Heat', '2021-2022', 'UKG'),
('Miami Heat', '2022-2023', 'UKG'),
('Miami Heat', '2023-2024', 'Carnival Cruise Line'),
('Miami Heat', '2024-2025', 'Robinhood');

-- Milwaukee Bucks
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Milwaukee Bucks', '2017-2018', 'Harley-Davidson'),
('Milwaukee Bucks', '2018-2019', 'Harley-Davidson'),
('Milwaukee Bucks', '2019-2020', 'Harley-Davidson'),
('Milwaukee Bucks', '2020-2021', 'Harley-Davidson'),
('Milwaukee Bucks', '2021-2022', 'Motorola'),
('Milwaukee Bucks', '2022-2023', 'Motorola'),
('Milwaukee Bucks', '2023-2024', 'Motorola'),
('Milwaukee Bucks', '2024-2025', 'Motorola');

-- Minnesota Timberwolves
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Minnesota Timberwolves', '2017-2018', 'Fitbit'),
('Minnesota Timberwolves', '2018-2019', 'Fitbit'),
('Minnesota Timberwolves', '2019-2020', 'Fitbit'),
('Minnesota Timberwolves', '2020-2021', 'Aura'),
('Minnesota Timberwolves', '2021-2022', 'Aura'),
('Minnesota Timberwolves', '2022-2023', 'Aura'),
('Minnesota Timberwolves', '2023-2024', 'Aura'),
('Minnesota Timberwolves', '2024-2025', 'Sezzle');

-- New Orleans Pelicans
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('New Orleans Pelicans', '2017-2018', 'Zatarain\'s'),
('New Orleans Pelicans', '2018-2019', 'Zatarain\'s'),
('New Orleans Pelicans', '2019-2020', 'Zatarain\'s'),
('New Orleans Pelicans', '2020-2021', 'Ibotta'),
('New Orleans Pelicans', '2021-2022', 'Ibotta'),
('New Orleans Pelicans', '2022-2023', 'Ibotta'),
('New Orleans Pelicans', '2023-2024', 'Ibotta'),
('New Orleans Pelicans', '2024-2025', 'NewAge Products');

-- New York Knicks
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('New York Knicks', '2017-2018', 'Squarespace'),
('New York Knicks', '2018-2019', 'Squarespace'),
('New York Knicks', '2019-2020', 'Squarespace'),
('New York Knicks', '2020-2021', 'Squarespace'),
('New York Knicks', '2021-2022', 'Squarespace'),
('New York Knicks', '2022-2023', 'Squarespace'),
('New York Knicks', '2023-2024', 'Sphere'),
('New York Knicks', '2024-2025', 'Experience Abu Dhabi');

-- Oklahoma City Thunder
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Oklahoma City Thunder', '2017-2018', 'Love\'s Travel Stops & Country Stores'),
('Oklahoma City Thunder', '2018-2019', 'Love\'s Travel Stops & Country Stores'),
('Oklahoma City Thunder', '2019-2020', 'Love\'s Travel Stops & Country Stores'),
('Oklahoma City Thunder', '2020-2021', 'Love\'s Travel Stops & Country Stores'),
('Oklahoma City Thunder', '2021-2022', 'Love\'s Travel Stops & Country Stores'),
('Oklahoma City Thunder', '2022-2023', 'Love\'s Travel Stops & Country Stores'),
('Oklahoma City Thunder', '2023-2024', 'Love\'s Travel Stops & Country Stores'),
('Oklahoma City Thunder', '2024-2025', 'Love\'s Travel Stops & Country Stores');

-- Orlando Magic
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Orlando Magic', '2017-2018', 'Walt Disney World (Disney)'),
('Orlando Magic', '2018-2019', 'Walt Disney World (Disney)'),
('Orlando Magic', '2019-2020', 'Walt Disney World (Disney)'),
('Orlando Magic', '2020-2021', 'Walt Disney World (Disney)'),
('Orlando Magic', '2021-2022', 'Walt Disney World (Disney)'),
('Orlando Magic', '2022-2023', 'Walt Disney World (Disney)'),
('Orlando Magic', '2023-2024', 'Walt Disney World (Disney)'),
('Orlando Magic', '2024-2025', 'Walt Disney World (Disney)');

-- Philadelphia 76ers
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Philadelphia 76ers', '2017-2018', 'StubHub'),
('Philadelphia 76ers', '2018-2019', 'StubHub'),
('Philadelphia 76ers', '2019-2020', 'StubHub'),
('Philadelphia 76ers', '2020-2021', 'StubHub'),
('Philadelphia 76ers', '2021-2022', 'Crypto.com'),
('Philadelphia 76ers', '2022-2023', 'Crypto.com'),
('Philadelphia 76ers', '2023-2024', 'Crypto.com'),
('Philadelphia 76ers', '2024-2025', 'Crypto.com');

-- Phoenix Suns
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Phoenix Suns', '2017-2018', 'PayPal'),
('Phoenix Suns', '2018-2019', 'PayPal'),
('Phoenix Suns', '2019-2020', 'PayPal'),
('Phoenix Suns', '2020-2021', 'PayPal'),
('Phoenix Suns', '2021-2022', 'PayPal'),
('Phoenix Suns', '2022-2023', 'PayPal'),
('Phoenix Suns', '2023-2024', 'PayPal'),
('Phoenix Suns', '2024-2025', 'PayPal');

-- Portland Trail Blazers
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Portland Trail Blazers', '2017-2018', 'Performance Health (BiOFREEZE)'),
('Portland Trail Blazers', '2018-2019', 'Performance Health (BiOFREEZE)'),
('Portland Trail Blazers', '2019-2020', 'Performance Health (BiOFREEZE)'),
('Portland Trail Blazers', '2020-2021', 'Performance Health (BiOFREEZE)'),
('Portland Trail Blazers', '2021-2022', 'StormX'),
('Portland Trail Blazers', '2022-2023', 'StormX'),
('Portland Trail Blazers', '2023-2024', 'StormX'),
('Portland Trail Blazers', '2024-2025', 'Brightside Windows');

-- Sacramento Kings
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Sacramento Kings', '2017-2018', 'Blue Diamond Growers'),
('Sacramento Kings', '2018-2019', 'Blue Diamond Growers'),
('Sacramento Kings', '2019-2020', 'Blue Diamond Growers'),
('Sacramento Kings', '2020-2021', 'Dialpad'),
('Sacramento Kings', '2021-2022', 'Dialpad'),
('Sacramento Kings', '2022-2023', 'Dialpad'),
('Sacramento Kings', '2023-2024', 'Dialpad'),
('Sacramento Kings', '2024-2025', 'Reviver');

-- San Antonio Spurs
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('San Antonio Spurs', '2017-2018', 'Frost Bank'),
('San Antonio Spurs', '2018-2019', 'Frost Bank'),
('San Antonio Spurs', '2019-2020', 'Frost Bank'),
('San Antonio Spurs', '2020-2021', 'Frost Bank'),
('San Antonio Spurs', '2021-2022', 'Self Financial (Self.)'),
('San Antonio Spurs', '2022-2023', 'Self Financial (Self.)'),
('San Antonio Spurs', '2023-2024', 'Self Financial (Self.)'),
('San Antonio Spurs', '2024-2025', 'Self Financial (Self.)');

-- Toronto Raptors
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Toronto Raptors', '2017-2018', 'Sun Life'),
('Toronto Raptors', '2018-2019', 'Sun Life'),
('Toronto Raptors', '2019-2020', 'Sun Life'),
('Toronto Raptors', '2020-2021', 'Sun Life'),
('Toronto Raptors', '2021-2022', 'Sun Life'),
('Toronto Raptors', '2022-2023', 'Sun Life'),
('Toronto Raptors', '2023-2024', 'Sun Life'),
('Toronto Raptors', '2024-2025', 'Sun Life');

-- Utah Jazz
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Utah Jazz', '2017-2018', 'Qualtrics (5 For The Fight)'),
('Utah Jazz', '2018-2019', 'Qualtrics (5 For The Fight)'),
('Utah Jazz', '2019-2020', 'Qualtrics (5 For The Fight)'),
('Utah Jazz', '2020-2021', 'Qualtrics (5 For The Fight)'),
('Utah Jazz', '2021-2022', 'Qualtrics (5 For The Fight)'),
('Utah Jazz', '2022-2023', 'Qualtrics (5 For The Fight)'),
('Utah Jazz', '2023-2024', 'LiveView Technologies (LVT)'),
('Utah Jazz', '2024-2025', 'LiveView Technologies (LVT)');

-- Washington Wizards
INSERT INTO team_sponsor (team, season, sponsor)
VALUES
('Washington Wizards', '2017-2018', 'Geico'),
('Washington Wizards', '2018-2019', 'Geico'),
('Washington Wizards', '2019-2020', 'Geico'),
('Washington Wizards', '2020-2021', 'Geico'),
('Washington Wizards', '2021-2022', 'Robinhood'),
('Washington Wizards', '2022-2023', 'Robinhood'),
('Washington Wizards', '2023-2024', 'Robinhood'),
('Washington Wizards', '2024-2025', 'Robinhood');

-- Add Playoffs year
ALTER TABLE team_sponsor
ADD COLUMN year INT;
SET SQL_SAFE_UPDATES = 0;
UPDATE team_sponsor
SET year = CAST(SUBSTRING_INDEX(season, '-', -1) AS UNSIGNED);
SET SQL_SAFE_UPDATES = 1;

select * from team_sponsor;