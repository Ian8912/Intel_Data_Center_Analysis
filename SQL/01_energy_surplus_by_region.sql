-- Query: Calculate total energy surplus by region

-- Description: This query calculates the sum total of energy produced and groups by region. The total energy surplus is calculated by subtracting the total demand from the total net generation. The results are ordered in descending order with the highest surplus of energy produced by region on top.

SELECT
region,
SUM(net_generation - demand) AS total_energy
FROM Intel.energy_data
GROUP BY region
ORDER BY total_energy DESC

-- Findings: The region with the highest positive total energy is the Mid-Atlantic with 31,693,087.