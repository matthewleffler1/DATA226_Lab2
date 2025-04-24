select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ROLLING_AVERAGE
from USER_DB_CATFISH.analytics.rolling_avg_filtered
where ROLLING_AVERAGE is null



      
    ) dbt_internal_test