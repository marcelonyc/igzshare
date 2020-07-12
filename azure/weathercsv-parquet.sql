create table weather_parquet (
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
STORED AS parquet
location 'v3io://users/admin/data/weather_parquet/';


Try Hive first
// From hive
insert overwrite table weather_parquet select * from weather limit 10;

// From Presto
// Create bigdata/user/hive/warehouse (default hive location)
CREATE TABLE hive.default.w_parquet
WITH (format = 'PARQUET', external_location='v3io://users/admin/data/w_parquet/')
AS
SELECT * from hive.default.weather