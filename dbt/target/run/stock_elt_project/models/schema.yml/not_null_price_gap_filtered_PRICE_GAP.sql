select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select PRICE_GAP
from USER_DB_CATFISH.analytics.price_gap_filtered
where PRICE_GAP is null



      
    ) dbt_internal_test