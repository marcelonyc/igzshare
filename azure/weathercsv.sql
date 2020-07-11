create external table weather (
usaf int,
wban int,
datetime char(15),
latitude decimal(10,10),
longitude decimal(10,10),
elevation decimal(10,10),
windAngle decimal,
windSpeed decimal,
temperature decimal,
seaLvlPressure decimal,
cloudCoverage char(5),
presentWeatherIndicator char(5),
pastWeatherIndicator char(5),
precipTime decimal,
precipDepth decimal,
snowDepth decimal,
stationName char(50),
countryOrRegion char(10),
p_k char(10),
year int,
day int,
version decimal
)
row format serde 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties 
(
    "separatorChar" = ','
)  
STORED AS TEXTFILE
location 'v3io://users/admin/data/weather_ecolab/weathercsv.csv';
