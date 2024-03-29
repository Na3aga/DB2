--Query n 1
SELECT *
    FROM
    (SELECT
         CITY.COUNTRY_CODE, COUNT(INVESTMENT.INVSTID) AS "Number of investments"
    FROM INVESTMENT
        JOIN STARTUP ON INVESTMENT.NAME = STARTUP.NAME
        JOIN CITY ON STARTUP.CITY = CITY.CITY
    GROUP BY
        CITY.COUNTRY_CODE
    ORDER BY
        "Number of investments" DESC
        )
WHERE ROWNUM <= 12;


--Query 2
SELECT
    CITY.STATE_CODE, SUM(STARTUP.TOTAL_FUNDING)  AS "total funding"
FROM CITY
    JOIN STARTUP ON CITY.CITY = STARTUP.CITY
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