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
#interviews[row, column]
interviews[1,1]
interviews[1,6]
interviews[1:5, 6]
interviews[1,1:6]
#if you do not know how many columns
interviews[1,1:ncol(interviews)]
interviews[1, ]
interviews[ ,6]
#single column/multiple columns
interviews[6]
interviews[1:6]
#interested certain features
interviews["respondent_wall_type"]
#negative values drop off some features
interviews[,-1]
interviews[100]
interviews[ ,100]
#create dataframe (interviews_100) containing only data in raw 100
interviews_100<-interviews[100, ]

#notice now (nrow(give you the number of rows in a dataframe
#use that number to pull out just last row in the data frame
interviews[nrow(interviews),]
#compare that with what you see as a tlast row using tail() to make sure its meeting expectations
tail(interviews)
#Pull out the last row using nrow() instead of row number
interviews[nrow(interviews),]
#create a new frame (interviews_last) from last row
interview_last<- interviews[nrow(interviews), ]
#use nrow() to extract the rpw which is in the middle of the data frame.store the content of this row in an object named interviws_middle
n_row<-nrow(interviews)
interviews[n_row/2,]
#do this instaed of previous command
interviews[round(n_row/2),]
interviews[ceiling(n_row/2),]
#combine nrow() with notation above to reproduce the behaviour od head(interviews)keeping just the first through 6th row in the interviews dataset
interviews[-(7:nrow(interviews)),]

