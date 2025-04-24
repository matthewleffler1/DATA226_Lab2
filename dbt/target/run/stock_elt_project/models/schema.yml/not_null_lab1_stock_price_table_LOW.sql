select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select LOW
from USER_DB_CATFISH.analytics.lab1_stock_price_table
where LOW is null



      
    ) dbt_internal_test