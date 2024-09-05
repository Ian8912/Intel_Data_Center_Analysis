-- Query: Create new column that labels the energy type produced as fossil fuel if non-renewable energy sources are summed

-- Description: The query calculates the sum total of non-renewable energy produced and groups by date and region. The total non-renewable energy is calculated by adding the non-renewable energy sources (petroleum, nuclear, natural gas, coal, other fuel sources) into one column. A new column labels every row similar as fossil fuel. 

SELECT
date,
region,
SUM(all_petroleum_products + nuclear + natural_gas + coal +
other_fuel_sources) AS energy_generated_mw,
'fossil fuel' AS energy_type
FROM Intel.energy_data
GROUP BY date, region

-- Findings: This is a parititon query that is used to help group rows by their energy sources produced and label them on their energy type. 