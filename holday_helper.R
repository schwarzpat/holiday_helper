library(dplyr)

# Read the csv file
holidays_df <- read.csv("generated_holidays.csv")

filter_holidays <- function(holidays_df, country_code, date_limit = "9999-12-31") {
  filtered_df <- filter(holidays_df,
                        country == country_code & ds <= date_limit)
  return(filtered_df$ds)
}
