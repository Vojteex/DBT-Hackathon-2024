




SELECT
    ID::NUMBER(38,0) as id_id
    ,
    CUSTOMER_STATUS::character varying(16777216) as customer_status
    ,
    CUSTOMER_TYPE::character varying(16777216) as customer_type
    ,
    CUSTOMER_CREATED::TIMESTAMP_NTZ as customer_created
    ,
    FIRST_NAME_HASH::FLOAT as first_name_hash
    ,
    SEX::character varying(16777216) as sex
    ,
    CUSTOMER_EMAIL_HASH::FLOAT as customer_email_hash
    ,
    CUSTOMER_PHONE_HASH::FLOAT as customer_phone_hash
    ,
    LAST_ORDER_DATE::DATE as last_order_date
    ,
    RECENCY_DAYS::NUMBER(38,0) as recency_days
    ,
    TRANSACTION_COUNT::NUMBER(38,0) as transaction_count
    ,
    TOTAL_ORDERED_AMOUNT::NUMBER(38,0) as total_ordered_amount
    ,
    RECENCY_SCORE::NUMBER(38,0) as recency_score
    ,
    FREQUENCY_SCORE::NUMBER(38,0) as frequency_score
    ,
    MONETARY_SCORE::NUMBER(38,0) as monetary_score
    ,
    RFM_SCORE::NUMBER(38,0) as rfm_score
    
    
FROM HACKATHON.DATA_SAMPLE.PIZZA_CUSTOMERS
;




SELECT
    EXPENDITURE_DATE::DATE as expenditure_date
    ,
    EXPENDITURES_SUM::NUMBER(38,14) as expenditures_sum
    
    
FROM HACKATHON.DATA_SAMPLE.PIZZA_MARKETING_EXPENDITURES
;




SELECT
    ID::NUMBER(38,0) as id_id
    ,
    CUSTOMER_ID::NUMBER(38,0) as customer_id_id
    ,
    ORDER_CREATED::DATE as order_created
    ,
    ORDER_DELIVERED::DATE as order_delivered
    ,
    CUSTOMER_ORDER_NUMBER::NUMBER(38,0) as customer_order_number
    ,
    ORDER_STATUS::character varying(16777216) as order_status
    ,
    IS_CANCELED::NUMBER(38,0) as is_canceled
    ,
    DELIVERY_TYPE::character varying(16777216) as delivery_type
    ,
    ORDER_SOURCE::character varying(16777216) as order_source
    ,
    FINAL_ORDER_PRICE_AFTER_DISCOUNT_CZK_WITHOUT_VAT::NUMBER(38,2) as final_order_price_after_discount_czk_without_vat
    ,
    ORDER_TOTAL_PRICE_BEFORE_DISCOUNT_CZK_WITHOUT_VAT::NUMBER(38,1) as order_total_price_before_discount_czk_without_vat
    ,
    ORDER_ITEMS_TOTAL_CZK_WITHOUT_VAT::NUMBER(38,1) as order_items_total_czk_without_vat
    ,
    ORDER_TOPPINGS_TOTAL_CZK_WITHOUT_VAT::NUMBER(38,0) as order_toppings_total_czk_without_vat
    ,
    DELIVERY_CHARGE_CZK::NUMBER(38,0) as delivery_charge_czk
    ,
    DISCOUNT_SUM_CZK::NUMBER(38,0) as discount_sum_czk
    ,
    NUMBER_OF_ITEMS::NUMBER(38,0) as number_of_items
    ,
    AVG_ITEM_TOTAL::NUMBER(38,15) as avg_item_total
    
    
FROM HACKATHON.DATA_SAMPLE.PIZZA_ORDERS
;




SELECT
    ID::NUMBER(38,0) as id_id
    ,
    ORDER_ID::NUMBER(38,0) as order_id_id
    ,
    PRODUCT_ID::NUMBER(38,0) as product_id_id
    ,
    PRODUCT_NAME::character varying(16777216) as product_name
    ,
    PRODUCT_CATEGORY_ID::NUMBER(38,0) as product_category_id_id
    ,
    CATEGORY_NAME::character varying(16777216) as category_name
    ,
    ITEM_TYPE::character varying(16777216) as item_type
    ,
    QUANTITY::NUMBER(38,0) as quantity
    ,
    ORDER_ITEM_TOPPINGS_TOTAL_PRICE_CZK_WITHOUT_VAT::NUMBER(38,0) as order_item_toppings_total_price_czk_without_vat
    ,
    ORDER_ITEM_TOTAL_PRICE_CZK_WITHOUT_VAT::NUMBER(38,1) as order_item_total_price_czk_without_vat
    ,
    PRODUCT_IMAGE::character varying(16777216) as product_image
    ,
    PRODUCT_DESCRIPTION::character varying(16777216) as product_description
    
    
FROM HACKATHON.DATA_SAMPLE.PIZZA_ORDER_ITEMS
;




SELECT
    
FROM HACKATHON.DATA_SAMPLE.PIZZA_ORDER_ITEMS_TOPPINGS
;




SELECT
    EXPENDITURE_DATE::DATE as expenditure_date
    ,
    EXPENDITURES_SUM::NUMBER(38,2) as expenditures_sum
    
    
FROM HACKATHON.DATA_SAMPLE.SAAS_MARKETING_EXPENDITURES
;




SELECT
    ROW_ID::NUMBER(38,0) as row_id_id
    ,
    ORDER_ID::character varying(16777216) as order_id_id
    ,
    ORDER_DATE::DATE as order_date
    ,
    DATE_KEY::NUMBER(38,0) as date_key
    ,
    CONTACT_NAME::character varying(16777216) as contact_name
    ,
    COUNTRY::character varying(16777216) as country
    ,
    CITY::character varying(16777216) as city
    ,
    REGION::character varying(16777216) as region
    ,
    SUBREGION::character varying(16777216) as subregion
    ,
    CUSTOMER::character varying(16777216) as customer
    ,
    CUSTOMER_ID::NUMBER(38,0) as customer_id_id
    ,
    INDUSTRY::character varying(16777216) as industry
    ,
    SEGMENT::character varying(16777216) as segment
    ,
    PRODUCT::character varying(16777216) as product
    ,
    LICENSE::character varying(16777216) as license
    ,
    SALES::NUMBER(38,4) as sales
    ,
    QUANTITY::NUMBER(38,0) as quantity
    ,
    DISCOUNT::NUMBER(38,2) as discount
    ,
    PROFIT::NUMBER(38,4) as profit
    
    
FROM HACKATHON.DATA_SAMPLE.SAAS_SALES
;




SELECT
    STOREID::NUMBER(38,0) as storeid_id
    ,
    STOCKLEVEL::NUMBER(38,0) as stocklevel
    ,
    RESTOCKDATE::DATE as restockdate
    
    
FROM HACKATHON.DATA_SAMPLE.GENERATED_INVENTORY_DETAILS
;




SELECT
    PRODUCTID::NUMBER(38,0) as productid_id
    ,
    PRODUCTNAME::character varying(16777216) as productname
    ,
    CATEGORY::character varying(16777216) as category
    ,
    PRICE::NUMBER(38,0) as price
    ,
    SKU::character varying(16777216) as sku
    
    
FROM HACKATHON.DATA_SAMPLE.GENERATED_PRODUCT_INFORMATION
;




SELECT
    TRANSACTIONID::NUMBER(38,0) as transactionid_id
    ,
    PRODUCTID::character varying(16777216) as productid_id
    ,
    QUANTITYSOLD::NUMBER(38,0) as quantitysold
    ,
    SALEDATE::DATE as saledate
    ,
    TOTALSALEAMOUNT::NUMBER(38,2) as totalsaleamount
    
    
FROM HACKATHON.DATA_SAMPLE.GENERATED_SALES_DATA


