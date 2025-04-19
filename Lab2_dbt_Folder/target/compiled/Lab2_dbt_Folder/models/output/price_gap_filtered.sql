with __dbt__cte__price_gap_calc as (
SELECT SYMBOL,
        DT AS DATE,
        OPEN,
        LAG(CLOSE, 1) OVER (PARTITION BY SYMBOL ORDER BY SYMBOL, DT) as LAST_CLOSING
FROM USER_DB_CATFISH.analytics.lab1_stock_price_table
ORDER BY SYMBOL, DATE
) SELECT *,
       (OPEN - LAST_CLOSING) AS PRICE_GAP
FROM __dbt__cte__price_gap_calc
WHERE LAST_CLOSING IS NOT NULL