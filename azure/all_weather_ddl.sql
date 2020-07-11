create external table all_weather_serde (
STATION varchar(30),
RECORD_DATE varchar(30),
SOURCE varchar(30),
LATITUDE DECIMAL,
LONGITUDE DECIMAL,
ELEVATION DECIMAL,
NAME varchar(30),
REPORT_TYPE varchar(30),
CALL_SIGN varchar(30),
QUALITY_CONTROL varchar(30),
WND DECIMAL,
CIG DECIMAL,
VIS DECIMAL,
TMP DECIMAL,
DEW DECIMAL,
SLP DECIMAL,
AA1 DECIMAL,
AJ1 DECIMAL,
AW1 DECIMAL,
AY1 DECIMAL,
AY2 DECIMAL,
AZ1 DECIMAL,
AZ2 DECIMAL,
GA1 DECIMAL,
GA2 DECIMAL,
GA3 DECIMAL,
GF1 DECIMAL,
GJ1 DECIMAL,
IA1 DECIMAL,
KA1 DECIMAL,
MA1 DECIMAL,
MD1 DECIMAL,
MW1 DECIMAL,
OC1 DECIMAL,
OD1 DECIMAL,
OD2 DECIMAL,
REM varchar(30),
EQD varchar(30)
)
row format serde 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties 
(
    "separatorChar" = ','
   ,"quoteChar"     = '\"'
)  
STORED AS TEXTFILE
location 'v3io://users/admin/data/weather/all_weather_data.csv';
