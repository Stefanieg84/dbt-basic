WITH stg_corderitems AS (
    SELECT * 
    FROM {{ ref('orderitems_base') }}
)

SELECT
    ORDERITEMID,
    ORDERID,
    PRODUCTID,
    UNITPRICE,
    QUANTITY,
    QUANTITY * UNITPRICE AS REVENUE,
    UPDATED_AT
FROM stg_corderitems