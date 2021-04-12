library(shiny)
library("tidyverse")



cancer_data = read_csv('data/cancer_data.csv')
select(slice(cancer_data,1:8),pt_id,age,age_group,event_label,1:5)
