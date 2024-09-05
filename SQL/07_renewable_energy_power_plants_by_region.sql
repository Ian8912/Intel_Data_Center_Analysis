-- Query: Join power_plants and energy_by_power_plant datasets by plant code. Calculate total number of renewable energy power plants by region.

-- Description: This query calculates the sum total of renewable energy power plants in every region grouped by energy type (renewable or fossil fuel). The results are ordered in descending order with the regions with the most renewable energy power plants on top.

SELECT
pp.region,
e.energy_type,
SUM(e.energy_generated_mw) AS total_renewable_energy
FROM Intel.power_plants_data AS pp
INNER JOIN Intel.energy_by_plant_data AS e
ON pp.plant_code = e.plant_code
WHERE e.energy_type = 'renewable_energy'
GROUP BY pp.region, e.energy_type
ORDER BY total_renewable_energy DESC

-- Findings: The region with the most renewable energy power plants is the Midwest with 233. The Northwest has 185 in second and Texas in 3rd place with 184.