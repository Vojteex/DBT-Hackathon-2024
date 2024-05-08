SELECT 
ID::NUMBER as team_20_orders_id, 
CUSTOMER_ID::NUMBER as team_20_orders_id,
 ORDER_CREATED::DATE as order_created,
  ORDER_DELIVERED::DATE as order_delivered, 
  CUSTOMER_ORDER_NUMBER::NUMBER as customer_order_number, 
  ORDER_STATUS::TEXT as order_status, 
  IS_CANCELED::NUMBER as is_canceled,
   DELIVERY_TYPE::TEXT as delivery_type, 
   ORDER_SOURCE::TEXT as order_source, 
   FINAL_ORDER_PRICE_AFTER_DISCOUNT_CZK_WITHOUT_VAT::NUMBER as final_order_price_after_discount_czk_without_vat,
    ORDER_TOTAL_PRICE_BEFORE_DISCOUNT_CZK_WITHOUT_VAT::NUMBER as order_total_price_before_discount_czk_without_vat, 
    ORDER_ITEMS_TOTAL_CZK_WITHOUT_VAT::NUMBER as order_items_total_czk_without_vat, 
    ORDER_TOPPINGS_TOTAL_CZK_WITHOUT_VAT::NUMBER as order_toppings_total_czk_without_vat,
     DELIVERY_CHARGE_CZK::NUMBER as delivery_charge_czk,
DISCOUNT_SUM_CZK::NUMBER as discount_sum_czk,
 NUMBER_OF_ITEMS::NUMBER as number_of_items,
 AVG_ITEM_TOTAL::NUMBER as avg_item_total 

FROM ORDERS;