DROP TABLE IF EXISTS population;
DROP TABLE IF EXISTS suicide;
DROP TABLE IF EXISTS happiness;

CREATE TABLE population(
	country TEXT,
	year INT,
	population INT
);

CREATE TABLE suicide(
	country TEXT,
	year INT,
	suicides_no INT
);

CREATE TABLE happiness(
	country TEXT,
	year INT,
	happiness_score INT,
	gdp_per_capita INT,
	social_support INT,
	life_expectancy INT,
	freedom INT
);

SELECT * FROM population;
SELECT * FROM suicide;
SELECT * FROM happiness;