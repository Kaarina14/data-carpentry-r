#dplyr and tidyr

library(tidyverse)
interviews <-read_scv("data/SAFI_clean.csv", na="NULL")
select(interviews, village, no_membrs, years_liv)

#choose columns villages to rooms
select(interviews, village:rooms)
