-- Query: Union the previous renewable energy and fossil fuel energy queries and group by date and region

-- Description: This query combines (unions) the previous two queries to sum and label each energy type based on its energy source produced.

SELECT
date,
region,
SUM(hydropower_and_pumped_storage + solar + wind) AS
energy_generated_mw,
'renewable energy' AS energy_type
FROM Intel.energy_data
GROUP BY date, region
UNION
SELECT
date,
region,
SUM(all_petroleum_products + nuclear + natural_gas + coal +
other_fuel_sources) AS energy_generated_mw,
'fossil fuel' AS energy_type
FROM Intel.energy_data
GROUP BY date, region

-- Findings: The query is used to help identify which grouped rows produce what energy type and how much of it. This accumulation allows for a more detailed analysis on the energy produced by region and date.