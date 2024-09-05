-- Query: Create new column that labels the energy type produced as renewable energy if renewable energy sources are summed

-- Description: The query calculates the sum total of renewable energy produced and groups by date and region. The total renewable enrgy is calculated by adding the renewable energy sources (hydropower, solar, wind) into one column. A new column labels every row similar as renewable energy. 

SELECT
date,
region,
SUM(hydropower_and_pumped_storage + solar + wind) AS
energy_generated_mw,
'renewable energy' AS energy_type
FROM Intel.energy_data
GROUP BY date, region

-- Findings: This is a parititon query that is used to help group rows by their energy sources produced and label them on their energy type. 