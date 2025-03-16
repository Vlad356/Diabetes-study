library(tidyverse)
library(dplyr)
library(ggplot2)
library(gridExtra)

data <- read_csv("data/diabetic_data.csv")
mapping_admission_source_id <- read_csv("data/mapping_admission_source_id.csv")
mapping_admission_type_id <- read_csv("data/mapping_admission_type_id.csv")
mapping_discharge_disposition_id <- read_csv("data/mapping_discharge_disposition_id.csv")


data$race <- factor(data$race)
data$gender <- factor(data$gender)

data$age <- factor(data$age, 
                   levels = c("[0-10)", "[10-20)", "[20-30)", "[30-40)", 
                              "[40-50)", "[50-60)", "[60-70)", "[70-80)", 
                              "[80-90)", "[90-100)"),
                   ordered = TRUE)


data <- data %>% 
  mutate(number_inpatient = as.numeric(as.character(number_inpatient)))


