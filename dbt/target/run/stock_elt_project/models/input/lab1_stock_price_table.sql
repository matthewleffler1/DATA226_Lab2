
  create or replace   view USER_DB_CATFISH.analytics.lab1_stock_price_table
  
   as (
    SELECT *
FROM USER_DB_CATFISH.raw.raw_stock_data
  );

