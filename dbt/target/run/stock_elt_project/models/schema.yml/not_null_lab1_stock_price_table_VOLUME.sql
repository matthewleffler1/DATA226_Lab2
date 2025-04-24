select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select VOLUME
from USER_DB_CATFISH.analytics.lab1_stock_price_table
where VOLUME is null



      
    ) dbt_internal_test