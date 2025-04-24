SELECT *
FROM {{ source('raw', 'raw_stock_data') }}