-- Query: Calculate the total renewable energy generated in each region for each hour of the day

-- Description: This query calculates the sum total of renewable energy generated at every hour of the day using the date_part function.

SELECT
region,
SUM(hydropower_and_pumped_storage + solar + wind) AS
total_renewable_energy,
date_part('hour', time_at_end_of_hour) AS hour
FROM Intel.energy_data
GROUP BY region, hour

-- Findings: This is a partition query that is used to help identify what hours of the day had the most and least renewable energy produced.