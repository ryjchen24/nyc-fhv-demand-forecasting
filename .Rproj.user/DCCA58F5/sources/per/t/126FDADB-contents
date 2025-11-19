

library(tidyverse)
library(timeDate)


nyc_weather <- read_csv("data/processed/nyc_weather.csv")
nyc_fhvhv_hourly <- read_csv("data/processed/nyc_fhvhv_hourly.csv")

major_holidays <- as.Date(c(
  "2024-11-11",
  "2024-11-28",
  "2024-12-24",
  "2024-12-25",
  "2024-12-31",
  "2025-01-01",
  "2025-01-20"
))

nyc_fhvhv <- nyc_fhvhv_hourly %>% 
  left_join(nyc_weather, by = c("pickup_hour" = "datetime")) %>% 
  mutate(
    dow = wday(pickup_hour, label = TRUE, abbr = FALSE)
  ) %>% 
  mutate(
    date = as.Date(pickup_hour),
    is_major_holiday = date %in% major_holidays
  ) %>% 
  select(-...1.x, -...1.y, -date)

write_csv(nyc_fhvhv, "data/processed/nyc_combined.csv")

