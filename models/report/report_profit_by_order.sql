select 
    PRODUCT_ID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY,
    SUM(order_profit) AS PROFIT
from 
    {{ ref('stgdb_orders_profit') }}
GROUP BY PRODUCT_ID,PRODUCTNAME,CATEGORY,SUBCATEGORY