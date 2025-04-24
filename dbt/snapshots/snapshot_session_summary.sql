{% snapshot snapshot_raw_stock_price %}

{{
  config(
    target_schema='snapshot',
    unique_key=['SYMBOL', 'DT'],
    strategy='check',
    check_cols='all',
    invalidate_hard_deletes=True
  )
}}

SELECT * FROM {{ ref('lab1_stock_price_table') }}

{% endsnapshot %}