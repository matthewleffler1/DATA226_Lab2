SELECT SYMBOL,
       DATE,
       ROLLING_AVERAGE
FROM {{ ref('rolling_average_calc') }}
WHERE row_num >= 7
ORDER BY SYMBOL, DATE, row_num