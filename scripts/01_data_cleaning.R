source("requirements.R")

# Read raw data
df <- readr::read_csv("~/Downloads/insurance_claims_r_project/data/raw/dataset.csv", show_col_types = FALSE)

# Clean column names and remove duplicates
df <- df %>%
  janitor::clean_names() %>%
  distinct()

# Quick inspection
str(df)
summary(df)
skimr::skim(df)
