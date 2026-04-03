# NYC FHV Demand Forecasting

This project predicts demand for For-Hire Vehicles (FHV) in New York City using historical trip data. The goal is to provide insights into ride-hailing patterns and help optimize vehicle allocation.

## Project Overview

- **Dataset:** FHV trip data from NYC Open Data (`fhvhv_tripdata_YYYY-MM.parquet`).  
- **Objective:** Predict hourly demand for FHV services in NYC.  
- **Tech Stack:**  
  - R for data cleaning and analysis  
  - R Shiny for interactive visualization  
  - Linear and LASSO regression models for forecasting  

## Features

- Load and preprocess raw FHV trip data  
- Aggregate trips by time, location, and other features  
- Train predictive models to forecast demand  
- Interactive R Shiny dashboard to visualize predictions and historical trends  

## Getting Started

1. **Clone the repository:**

```bash
git clone https://github.com/<your-username>/nyc-fhv-demand-forecasting.git
cd nyc-fhv-demand-forecasting
