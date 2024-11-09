 SELECT 
    O.*,
--raw_customer
    c.*,
--raw_product
    P.*,
    (O.ORDERSELLINGPRICE - O.ORDERCOSTPRICE) as order_profit
FROM {{ ref('rawdb_orders') }} AS O
LEFT JOIN 
    {{ ref('rawdb_orders') }} AS C
on 
    c.CUSTOMER_ID = o.CUSTOMERID
LEFT JOIN 
    {{ ref('rawdb_product') }} AS P
on 
    p.PRODUCT_ID=o.PRODUCTID