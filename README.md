# Intel_Data_Center_Analysis

![Intel Logo](https://github.com/Ian8912/Intel_Data_Center_Analysis/blob/main/images/Intel_Data_Center_Logo.png?raw=true)

## Project Overview

This project was conducted to help Intel's Sustainability Team determine the optimal location for a new data center by analyzing energy production data from different U.S. regions. The analysis focuses on which regions produce a surplus of energy, renewable energy trends, and overall energy efficiency.

The project overview can be found in the [Project Overview](Documentation/Project_Overview.md)

## Objectives

- Identify regions in the U.S. with the highest energy production surplus.
- Analyze renewable energy reliance and net production by region.
- Provide insights to guide the decision for Intel's new data center location.

## Data Set Descriptions

This project used 3 different datasets that each separately contained information about daily energy production and consumption by region, contained information about power plants in the U.S., and contained total energy production information for each plant.

The datasets and descriptions can be found in the [Dataset Descriptions](Documentation/Dataset_Descriptions.md)

## SQL Queries

This project uses several SQL queries to analyze energy production and consumption data from various power generators and power plants around the U.S. The queries are used to calculate the total and percentage of renewable and non-renewable energy sources as well as calculating the hourly trends of energy generation by regions.

The SQL queries can be found chronologically in the [SQL Folder](SQL/)

## Visualizations

This project uses several data visualizations to depict data mined, manipulated, and analyzed from SQL queried tables. The visualizations show a better representation of the data queried from the Intel datasets.

The Visualizations can be found chronologically in the [Visualizations Folder](Visualizations/)

## Key Queries paired with Visualizations

**Energy Surplus by region**:

- Calculates total energy surplus by region
- [View Query](SQL/01_energy_surplus_by_region.sql)
- [View Visualization](Visualizations/02_energy_surplus_by_region.png)

**Percentage Renewable by region**:

- Calculates the percentage of renewable energy by region
- [View Query](SQL/03_percentage_renewable_by_region.sql)
- [View Visualization](Visualizations/03_percentage_renewable_by_region.png)

**Combined Energy Types by date and region**:

- Union renewable energy and fossil fuel energy queries together and group by date and region
- [View Query](SQL/06_combined_energy_types.sql)
- [View Line Chart Visualization](Visualizations/04_combined_energy_types_line_chart.jpeg)
- [View Bar Chart Visualization](Visualizations/05_combined_energy_types_bar_chart.jpeg)

**Renewable Energy by hour for California and Northwest regions**:

- Calculate the total renewable energy generated in California and Northwest regions each hour of day
- [View Query](SQL/10_renewable_energy_by_hour_for_Cali_Northwest.sql)
- [View Visualization](Visualizations/01_renewable_energy_by_hour_for_Cali_Northwest.jpeg)

## Final Analysis

The Sustainability Team is looking for the region and state that would be best for a new Intel data center. Below is a link to the final analysis.

- [View Final Analysis](Documentation/Final_Analysis.pdf)
