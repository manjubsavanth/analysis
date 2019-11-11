CREATE EXTERNAL TABLE `transaction_10_vm`(
  `group_company_code` string, 
  `wireless_sales_slip_no` string, 
  `column_no` string, 
  `product_code` string, 
  `full_tank_number` string, 
  `selling_price` string, 
  `meter_no` string, 
  `hot_cold_classification` string, 
  `last_visit_inventory` string, 
  `sales_quantity` string, 
  `sales_after_supply` string, 
  `product_code_before_replacement` string, 
  `full_tank_quantity_before_product_replacement` string, 
  `number_of_products_introduced_before_product_replacement` string, 
  `price_before_replacement` string, 
  `meter_no_before_product_replacement` string, 
  `hot_cold_classification_before_product_replacement` string, 
  `site_code` string, 
  `department_code` string, 
  `route_code` string, 
  `customer_number` string, 
  `branch_number` string, 
  `equipment_code` string, 
  `sales_date` string, 
  `last_visit_date` string, 
  `last_calibration_date` string, 
  `number_of_sales_update_failure` string, 
  `buying_place_code` string, 
  `sales_system_representative_code` string, 
  `sales_method_detail_code` string, 
  `in_out_classification` string, 
  `annual_contribution_sales_capacity_conversion` string, 
  `open_closed_classification` string, 
  `contents_manufacturer_code` string, 
  `installation_date` string, 
  `number_of_adjacent_vm_cc` string, 
  `number_of_adjacent_vm_k` string, 
  `number_of_adjacent_vm_a` string, 
  `number_of_adjacent_vm_dy` string, 
  `number_of_adjacent_vm_it` string, 
  `number_of_adjacent_vm_po` string, 
  `number_of_adjacent_vm_ot` string, 
  `number_of_adjacent_vm_sf` string, 
  `other_num` string, 
  `dt` string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   'separatorChar' = ',',
   'quoteChar' = '"',
   'escapeChar' = '\\'
   )
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://suntory-data/filtered_10_vm_transaction'
TBLPROPERTIES (
  'has_encrypted_data'='false', 
  'skip.header.line.count'='1', 
  'transient_lastDdlTime'='1573463120')