SELECT strftime('%H', pickup_datetime) AS time, COUNT(*) AS num
FROM taxi_trips
GROUP BY time
ORDER BY num DESC;
