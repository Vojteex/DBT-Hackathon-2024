

CREATE TABLE INVENTORY_DETAILS AS SELECT * FROM GENERATED_INVENTORY_DETAILS;
CREATE TABLE ORDERS AS SELECT * FROM PIZZA_ORDERS;
CREATE TABLE SALES_DATA AS SELECT * FROM GENERATED_SALES_DATA;
CREATE TABLE ORDER_ITEM_TOPPINGS AS SELECT * FROM PIZZA_ORDER_ITEM_TOPPINGS;
CREATE TABLE MARKETING_EXPENDITURES AS SELECT * FROM PIZZA_MARKETING_EXPENDITURES;
CREATE TABLE PRODUCT_INFORMATION AS SELECT * FROM GENERATED_PRODUCT_INFORMATION;
CREATE TABLE CUSTOMERS AS SELECT * FROM PIZZA_CUSTOMERS;
CREATE TABLE ORDER_ITEMS AS SELECT * FROM PIZZA_ORDER_ITEMS;
CREATE TABLE MARKETING_EXPENDITURES AS SELECT * FROM SAAS_MARKETING_EXPENDITURES;
CREATE TABLE SALES AS SELECT * FROM SAAS_SALES;