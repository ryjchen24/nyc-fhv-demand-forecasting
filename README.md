# nyc-fhv-demand-forecasting

# NYC Taxi and Ride Data Analysis

This project analyzes New York City for hire vehicles (Uber and Lyft) to explore patterns in ride demand, distributions in trips, and geospatial trends. It includes data scraping, processing, visualization, and predictive modeling to gain insight on how factors such as weather, day, time, etc. affect the usage of for hire vehicle services.

---

## Features

- **Data Processing**: Clean, merge, and aggregate NYC taxi and ride-hailing datasets (yellow, green taxis, and FHVs).  
- **Exploratory Data Analysis: Analyze trip counts, hourly/daily trends, and ride distribution by location.  
- **Geospatial Mapping**: Visualize trip intensity across NYC boroughs and taxi zones using `sf` and `ggplot2`.  
- **Predictive Modeling**: Train and evaluate models (linear regression, random forest, and xg boost) to predict trip counts based on time, location, and weather.  
- **Cross-Validation & Model Comparison**: Compare performance metrics (RMSE, R², MAE) for different models.  

---

## Data

- **Raw Data**: NYC taxi trip data and FHV (For-Hire Vehicle) data in CSV or Parquet format.  
- **Taxi Zones**: Shapefiles (`taxi_zones.shp`) used for geospatial mapping.  
- **Weather Data**: Optional weather data for predictive modeling.

> Note: Large files will need to be downloaded separately due to GitHub file size limits.

Provided below is information on how to download any extra data files. Since this project used over 70 million data entries in order to do predictive modeling, csv and parquet files that were used for this project were too large to upload or push into github.

NYC FHVHV Data: https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
I used data from Novermber 2024 - January 2025
This data should be put into a folder called "raw" in the data folder with the names as follows:

- fhvhv_tripdata_2024-11.parquet
- fhvhv_tripdata_2024-12.parquet
- fhvhv_tripdata_2025-01.parquet

Processed Data:
In the processed folder, there are three R files that use the write_csv function at the bottom of each. Open these files in RStudio and run these functions, saving the csv files into the processed folder with the subsequent R files.

---

## Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/nyc-taxi-analysis.git
cd nyc-taxi-analysis
