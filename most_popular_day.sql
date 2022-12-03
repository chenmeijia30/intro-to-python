SELECT strftime('%w', pickup_datetime) AS day, COUNT(*) AS num
FROM uber_trips
GROUP BY day
ORDER BY num DESC;
