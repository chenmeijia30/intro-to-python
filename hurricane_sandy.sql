WITH hired_trips AS (SELECT strftime('%Y-%m-%d %H:00:00:00',pickup_datetime) AS DATE
            FROM taxi_trips
            WHERE pickup_datetime BETWEEN '2012-10-22' AND '2012-10-31'
            UNION ALL
            SELECT pickup_datetime FROM uber_trips
            WHERE pickup_datetime BETWEEN '2012-10-22' AND '2012-10-31')
            SELECT strftime('%Y-%m-%d %H:00:00:00',hourly_weather.DATE) AS WDATE, COALESCE(COUNT(hired_trips.DATE),0) AS num, HourlyPrecipitation, HourlyWindSpeed
            FROM hourly_weather
            LEFT JOIN hired_trips
            ON WDATE = hired_trips.DATE
            WHERE WDATE BETWEEN '2012-10-22' AND '2012-10-31'
            GROUP BY WDATE
            