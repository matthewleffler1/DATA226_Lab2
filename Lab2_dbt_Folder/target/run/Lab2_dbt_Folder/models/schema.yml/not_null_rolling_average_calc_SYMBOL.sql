select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



with __dbt__cte__rolling_average_calc as (


SELECT SYMBOL,
       DT AS "DATE",
       CLOSE,
       ROW_NUMBER() OVER (PARTITION BY SYMBOL ORDER BY SYMBOL, DATE) AS row_num,
       ROUND(AVG(CLOSE) OVER (PARTITION BY SYMBOL ORDER BY SYMBOL, DATE ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS ROLLING_AVERAGE
FROM USER_DB_CATFISH.analytics.lab1_stock_price_table
) select SYMBOL
from __dbt__cte__rolling_average_calc
where SYMBOL is null



      
    ) dbt_internal_test