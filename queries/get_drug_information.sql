CREATE OR REPLACE FUNCTION workspace.default.get_drug_information(
  drug STRING
)
RETURNS TABLE (
  `brand_name` STRING,
  `generic_name` STRING,
  `manufacturer_name` STRING,
  `route` STRING,
  `substance_name` STRING,
  `active_ingredient` STRING,
  `purpose` STRING,
  `indications_and_usage` STRING,
  `warnings` STRING
)
RETURN
  SELECT
    `brand_name`,
    `generic_name`,
    `manufacturer_name`,
    `route`,
    `substance_name`,
    `active_ingredient`,
    `purpose`,
    `indications_and_usage`,
    `warnings`
  FROM workspace.default.clean_drug_table
  WHERE lower(`generic_name`) LIKE CONCAT('%', lower(drug), '%')
    OR lower(`brand_name`) LIKE CONCAT('%', lower(drug), '%')
  LIMIT 1;