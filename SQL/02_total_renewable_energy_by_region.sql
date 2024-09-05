-- Query: Calculate total renewable energy accumulated by region

-- Description: This query calculates the sum total of renewable energy produced and groups by region. The total renewable energy is calculated by adding the renewable energy sources (hydropower, solar, wind) into one column. The results are ordered in descending order with the highest renewable energy produced by region on top. 

SELECT
region,
SUM(hydropower_and_pumped_storage + solar + wind) AS
total_renewable_energy
FROM Intel.energy_data
GROUP BY region
ORDER BY total_renewable_energy DESC

-- Findings: The region with the highest total renewable energy produced was the Northwest with 199,266,574. The second highest was Texas with 131,367,234. 