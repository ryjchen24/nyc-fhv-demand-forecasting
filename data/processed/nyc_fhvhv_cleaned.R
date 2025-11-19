library(tidyverse)
library(arrow)
library(here)

fhvhv_df_nov_24 <- read_parquet("data/raw/fhvhv_tripdata_2024-11.parquet")
fhvhv_df_dec_24 <- read_parquet("data/raw/fhvhv_tripdata_2024-12.parquet")
fhvhv_df_jan_25 <- read_parquet("data/raw/fhvhv_tripdata_2025-01.parquet") %>% 
  select(-cbd_congestion_fee)


fhvhv_data <- bind_rows(fhvhv_df_nov_24, fhvhv_df_dec_24, fhvhv_df_jan_25) %>% 
  select(hvfhs_license_num, pickup_datetime, PULocationID, DOLocationID) %>% 
  filter(pickup_datetime < as.POSIXct("2025-01-21 00:00:00")) %>% 
  filter(pickup_datetime > as.POSIXct("2024-11-01 00:00:00")) %>% 
  mutate(pickup_hour = floor_date(pickup_datetime, "hour"))
  
hourly_fhvhv_zone_data <- fhvhv_data %>% 
  group_by(PULocationID, pickup_hour) %>% 
  summarise(trips = n(), .groups = "drop")

write.csv(hourly_fhvhv_zone_data, "data/processed/nyc_fhvhv_hourly.csv")
