CREATE OR REPLACE FUNCTION workspace.default.find_drug_interactions(
  drug_prescribed STRING,
  drugs_being_taken ARRAY<STRING>
)
RETURNS TABLE (
  `Drug` STRING,
  `Interacting Drug` STRING,
  `Interaction Description` STRING
)
RETURN
  SELECT
    drug_prescribed AS `Drug`,
    `Interacting Drug`,
    `Interaction Description`
  FROM workspace.default.get_drug_interactions(drug_prescribed)
  WHERE size(
    array_intersect(
      transform(drugs_being_taken, d -> lower(d)),
      array(lower(`Interacting Drug`))
    )
  ) > 0;
