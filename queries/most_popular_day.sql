SELECT strftime('%w', pickup_datetime) AS day, COUNT(*) AS num
FROM taxi_trips
GROUP BY day
ORDER BY num DESC;
