#! /bin/bash
cd /User/data/weather || mkdir -p /User/data/weather 

for year in 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019
do
    wget https://www.ncei.noaa.gov/data/global-hourly/archive/csv/${year}.tar.gz > /dev/null 2>&1 &
done
wait

for year in 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019
do
    tar xvf ${year}.tar.gz > /dev/null 2>&1 &
done
wait

ALL_WEATHER="all_weather_data.csv"
for file in `ls *.csv`
do
    if [ ! -f ${ALL_WEATHER} ]
    then
        head -1 ${file} >> ${ALL_WEATHER} 
    fi
    # FIlTER out 1st row
    cat ${file} | grep -v STATION >> all_weather_data.csv 
done