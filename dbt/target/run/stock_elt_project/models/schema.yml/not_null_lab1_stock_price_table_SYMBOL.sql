select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select SYMBOL
from USER_DB_CATFISH.analytics.lab1_stock_price_table
where SYMBOL is null



      
    ) dbt_internal_test