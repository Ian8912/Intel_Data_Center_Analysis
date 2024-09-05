-- Query: Calculate the total renewable energy generated in California and Northwest regions only for each hour of the day

-- Description: This query calculates the sum total of renewable energy generated at every hour of the day using the date_part function. The query filters to only regions in California and Northwest.

SELECT
region,
SUM(hydropower_and_pumped_storage + solar + wind) AS
total_renewable_energy,
date_part('hour', time_at_end_of_hour) AS hour
FROM Intel.energy_data
WHERE region = 'California' OR region = 'Northwest'
GROUP BY region, hour

-- Findings: This is the optimized query with region filtering from the previous query. California and Northwest are two regions that are points of interest since they both had the highest percentage of renewable energy generated in their respective regions. 

-- According to the data, the Northwest region generated more total renewable energy than California. Both regions also have a similar pattern of energy production growing exponentially faster starting from the 5th-6th hour of the day with a downtrend starting at the 15th-16th hour. This makes sense when it comes to working hours of employees, such as producing more energy once the sun comes out and before employees arrive for there 8-4pm or 9-5pm jobs. 

--This query has a data visualization that better represents comparing the two regions in the Visualizations directory.