-- Query: Calculate the percentage of renewable energy by region

-- Description: This query calculates the percentage of renewable energy produced and groups by region. The percentage of renewable energy produced is calculated by dividing the sum of renewable energy sources by the sum net generation and multiplying this number by 100. The results are ordered in descending order with the highest percentage of renewable energy produced by region on top. 

SELECT
region,
SUM(hydropower_and_pumped_storage + solar + wind) /
SUM(net_generation) * 100 AS pct_renewable_energy
FROM Intel.energy_data
GROUP BY region
ORDER BY pct_renewable_energy DESC

-- Findings: The top 3 regions change slightly from the total renewable energy table vs the percentage of renewable energy table. The top 3 regions of total renewable energy were the Northwest, Texas, and Central. The top 3 regions of percentage of renewable energy were the  Northwest, Central, and California. The only noticeable change was California swapping a spot with Texas at the top 3. While Texas is top 3 in total renewable energy produced, the majority of their total energy produced is not renewable, or at the very least not in the top 3 in the United States. 