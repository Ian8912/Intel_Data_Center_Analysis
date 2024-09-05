-- Query: Calculate regions with at least 50 power plants that use solar photovoltaic technology

-- Description: This query calculates the sum total of distinct power plants that primarily use solar photovoltaic technology.  Both datasets are inner joined by similar plant codes. The power plant dataset is filtered by only solar photovoltaic power plants and grouped by filtered regions with at least 50 power plants. The results are ordered in descending order with the highest number of power plants by region on top. 

SELECT
t.region,
t.total_power_plants,
t.total_energy_generated
FROM (SELECT
pp.region,
COUNT(DISTINCT e.plant_name) AS total_power_plants,
SUM(e.energy_generated_mw) AS total_energy_generated
FROM Intel.power_plants_data AS pp
INNER JOIN Intel.energy_by_plant_data AS e
ON pp.plant_code = e.plant_code
WHERE pp.primary_technology = 'Solar Photovoltaic'
GROUP BY pp.region) AS t
WHERE t.total_power_plants >= 50
ORDER BY t.total_power_plants DESC

-- Findings: This data depicts that the MidWest region might have the 3rd most power plants in the United States that's primary technology is solar photovoltaic, but the total energy generated is the lowest compared to the 6 in total. This infers that these Midwest region power plants aren't as efficient power producing wise and/or large in size.