--Query n 1

SELECT
     CITY.COUNTRY_CODE, COUNT(INVESTMENT.INVSTID) AS "Number of investments"
FROM
    STARTUP, CITY, INVESTMENT
WHERE
    INVESTMENT.NAME = STARTUP.NAME
    AND STARTUP.CITY = CITY.CITY
GROUP BY
    CITY.COUNTRY_CODE
ORDER BY
    "Number of investments" DESC
;

--Query 2
SELECT
    CITY.STATE_CODE, SUM(STARTUP.TOTAL_FUNDING)  AS "total funding"
FROM
    CITY, STARTUP
WHERE
    CITY.CITY = STARTUP.CITY
GROUP BY
    CITY.STATE_CODE
ORDER BY
    "total funding" DESC
;

--Query 3
SELECT
    INVESTMENT.SEED, ROUND(AVG(INVESTMENT.VENTURE)) AS VENTURE
FROM
    INVESTMENT
GROUP BY
    INVESTMENT.SEED
ORDER BY
    INVESTMENT.SEED
;