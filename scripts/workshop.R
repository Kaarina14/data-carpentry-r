## Use this file to follow along with the live coding exercises.
## The csv file containing the data is in the 'data/' directory.
## If you want to save plots you created, place them in the 'figures/' directory.
## You can create additional R files in the 'scripts/' directory.
library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv",na="NULL")
interviews
# can be show as original data, use command  as.data.frame(interview)
view(interviews)
#inspect data
dim(interviews)
nrow(interviews)
ncol(interviews)

head(as.data.frame(interviews))
#last rows in data
tail(interviews)
#column names
names (interviews)
#basic summary of data (data classes, which is data.frames)
str(interviews)
#summary shows each column separately and saummarises them mean values, min, max etc.
summary(interviews)


