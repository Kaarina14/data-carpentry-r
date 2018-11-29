interviews<-read_csv("data/SAFI_clean.csv", na="NULL")


#factors
respondent_floor_type<- factor(c("earth", "cement", "cement","earth"))
levels(respondent_floor_type)
nlevels(respondent_floor_type)

respondent_floor_type
respondent_floor_type<-factor(respondent_floor_type, levels = c("earth", "cement"))

levels(respondent_floor_type)[2]<-"brick"
respondent_floor_type

as.character(respondent_floor_type)
# use numbers as factors(changing them to factors like 1,2,3,4)
year_fct<-factor(c(1990, 1983, 1998, 1990))
as.numeric(year_fct)
#back to numbers
as.numeric(as.character(year_fct))
#other way to do it and index as year_fct numbers indexed to factor, R recommended way
as.numeric(levels(year_fct))[year_fct]
#example from interview data ($=name of the column)
affect_conflicts<-interviews$affect_conflicts
#or do it this way
affect_conflicts<-interviews[[ "affect_conflicts"]]
affect_conflicts<-factor(affect_conflicts)
affect_conflicts
#create plot
plot(affect_conflicts)

#NA not showing in plot and do it your preferred order
affect_conflicts<-interviews$affect_conflicts
affect_conflicts[is.na(affect_conflicts)]<-"undetermined"
affect_conflicts
#can be now converted to factor
affect_conflicts<-factor(affect_conflicts)
plot(affect_conflicts)
#can we now change the order for columns in plot, more than once,once, frequently, never, undetermined

#read.csv() R recommended command(it think character columns as factors) 
#tidyverse uses read_csv
#interviews<- read.csv("data/SAFI_clean.csv", na="NULL",stringsAsFactor=FALSE)
#Rename the factor level “more_once” to “more than once”.


levels(affect_conflicts)[2]<-"more than once"
levels(affect_conflicts)
plot(affect_conflicts)
#or do it this way
levels(affect_conflicts)[levels(affect_conflicts)=="more_once"]<- "more than once"

#Can you recreate the barplot such that factor levels are ordered from least to most frequent (placing “undetermined” last)?

affect_conflicts <- factor(affect_conflicts,levels=c("never", "once", "frequently","more than once", "undetermined"))

plot(affect_conflicts)
#each component of your date is stored as a separate variable.
str(interviews)
library(lubridate)
dates <- interviews$interview_date
str(dates)

#start working with the dates, place them in new variable

interviews$day <- day(dates)
interviews$month <- month(dates)
interviews$year <- year(dates)
str(interviews)

