CREATE VIEW HOL_DB1.ANALYTICS.NORMALIZED_SALES AS
SELECT
    t1.COUNTRY_REGION,
    t1.DATE,
    t1.TOTAL_CASES,
    t2.RETAILER,
    t2.SALES_AMOUNT,
    t2.PRODUCT 
FROM
    HOL_DB1.COVID_WORLDWIDE.CLEANED_WORLD_HEALTH_TESTS t1
JOIN
    HOL_DB1.RETAIL.RETAILER_SALES t2
ON
    t1.DATE = t2.DATE_KEY
WHERE
    t1.TOTAL_CASES > 0
    AND t2.SALES_AMOUNT IS NOT NULL;