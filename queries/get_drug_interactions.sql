CREATE OR REPLACE FUNCTION workspace.default.get_drug_interactions(
  drug STRING
)
RETURNS TABLE (
  `Drug` STRING,
  `Drug With Interaction` STRING,
  `Interaction Description` STRING
)
RETURN
  SELECT `Drug 1` AS `Drug`,
    `Drug 2` AS `Drug With Interaction`,
    `Interaction Description`
  FROM workspace.default.clean_drug_interactions
  WHERE lower(`Drug 1`) = lower(drug)
    OR lower(`Drug 2`) = lower(drug)