library(dplyr)

# Read the csv file
holidays_df <- read.csv("generated_holidays.csv")

filter_holidays <- function(holidays_df, country_code) {
  filtered_df <- filter(holidays_df, country == country_code)
  
# Return the vecotr of dates
  return(filtered_df$ds)
}
