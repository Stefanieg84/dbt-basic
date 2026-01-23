WITH stg_customers AS (
    SELECT * 
    FROM {{ ref('customers_base') }}
)

SELECT
    CUSTOMERID,
    FIRSTNAME,
    LASTNAME,
    EMAIL,
    PHONE,
    ADDRESS,
    CITY,
    STATE,
    ZIPCODE,
    UPDATED_AT,
    CONCAT(FIRSTNAME, ' ', LASTNAME) AS CUSTOMERNAME
FROM stg_customers