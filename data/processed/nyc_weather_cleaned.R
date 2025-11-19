library(tidyverse)

nyc_weather_df_1 <- read_csv("data/external/nyc-weather-11_1_2024-12_10_2024.csv")
nyc_weather_df_2 <- read_csv("data/external/nyc-weather-12_11_2024-1_20_2025.csv")

nyc_weather_df <- bind_rows(nyc_weather_df_1, nyc_weather_df_2) %>% 
  select(datetime, temp, humidity, precip, snowdepth, windgust, conditions) %>% 
  group_by(datetime) %>% 
  slice(1) %>% 
  ungroup()

write.csv(nyc_weather_df, "data/processed/nyc_weather.csv")
