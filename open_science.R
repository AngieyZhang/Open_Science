# lampyrid analysis
#bring data in from figshare
lampyrid<-read.csv(file="https://ndownloader.figshare.com/files/3686040",
                   header=T)

#clean data
#fix dates, make them ISO'ed
library(lubridate)
lampyrid$newdate<-mdy(lampyrid$DATE)
#extract year
lampyrid$year<-year(lampyrid$newdate)
#extract day of year. DOY is very useful for a phenology type analyses
#because you don't have to deal with day-of-month numbers starting over 
#in the middle of a phenological event.
lampyrid$DOY<-yday(lampyrid$newdate)


#download weather data from KBS weather station
weather<-read.table(file="http://lter.kbs.msu.edu/datatables/7.csv", header=T, sep=",", na.strings="")
weather$DOY<-yday(weather$date)
plot(weather$DOY, weather$air_temp_mean)
plot(weather$DOY, weather$precipitation)

# calculate the degree day accumulation for the first half of the day dd1,
#assuming a sine wave structure of temperature over the day
#use a development threshold of 10C, well, because it's a nice number
#to work with

#to work 

#with


#with
plot(weather$precipitation, weather$air_temp_mean)


