CREATE TABLE IF NOT EXISTS hourly_weather (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE,
    HourlyWindSpeed INT8,
    HourlyPrecipitation FLOAT64
);
CREATE TABLE IF NOT EXISTS daily_weather (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE ,
    DailyWindSpeed INT8,
    DailyPrecipitation FLOAT64
);
CREATE TABLE IF NOT EXISTS taxi_trips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pickup_datetime DATE,
    PULocationID INT8,
    DOLocationID INT8,
    pickup_longitude FLOAT32,
    pickup_latitude FLOAT32,
    dropoff_longitude FLOAT32,
    dropoff_latitude FLOAT32,
    tip_amount FLOAT32,
    distance FLOAT32
);
CREATE TABLE IF NOT EXISTS uber_trips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pickup_datetime DATE,
    pickup_longitude FLOAT32,
    pickup_latitude FLOAT32,
    dropoff_longitude FLOAT32,
    dropoff_latitude FLOAT32,
    distance FLOAT32
);
