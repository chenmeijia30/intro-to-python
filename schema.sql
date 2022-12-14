CREATE TABLE IF NOT EXISTS hourly_weather (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE,
    HourlyWindSpeed FLOAT32,
    HourlyPrecipitation FLOAT32
);
CREATE TABLE IF NOT EXISTS daily_weather (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE,
    DailyWindSpeed FLOAT32,
    DailyPrecipitation FLOAT32
);
CREATE TABLE IF NOT EXISTS taxi_trips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pickup_datetime DATE,
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
CREATE TABLE IF NOT EXISTS sun_data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE,
    Sunrise INT32,
    Sunset INT32
);
