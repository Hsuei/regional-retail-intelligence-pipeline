USE mnc_retail_db;
SELECT COUNT(*) FROM dim_sales_performance;

SELECT * FROM dim_sales_performance LIMIT 10;

# Adding quantity & unit price columns 
ALTER TABLE dim_sales_performance 
ADD COLUMN quantity INT AFTER catagory;
ALTER TABLE dim_sales_performance
ADD COLUMN price_per_unit INT AFTER quantity;

TRUNCATE TABLE dim_sales_performance;

#Importing all 12,575 rows with new columns
INSERT INTO dim_sales_performance (
    transaction_id, customer_id, catagory, quantity, price_per_unit, total_spend, transaction_date
)
SELECT 
    CAST(NULLIF(REPLACE(transaction_id, 'TXN_', ''), '') AS UNSIGNED),
    customer_id,
    category,
    CAST(ROUND(CAST(NULLIF(TRIM(quantity), '') AS DECIMAL(10,2)))AS UNSIGNED),
       CASE 
        WHEN CAST(NULLIF(TRIM(quantity), '') AS DECIMAL(10,2)) IS NULL 
             OR CAST(NULLIF(TRIM(quantity), '') AS DECIMAL(10,2)) = 0
        THEN 0.00
        ELSE CAST(NULLIF(TRIM(total_spent), '') AS DECIMAL(10,2)) /
             CAST(NULLIF(TRIM(quantity), '') AS DECIMAL(10,2))
    END,
    COALESCE(CAST(NULLIF(TRIM(total_spent), '') AS DECIMAL(10,2)), 0.00),
    STR_TO_DATE(NULLIF(TRIM(transaction_date), ''), '%Y-%m-%d')
FROM staging_sales_data;