WITH hired_trips AS (SELECT pickup_datetime,distance 
          FROM taxi_trips 
          WHERE pickup_datetime BETWEEN '2009-01-01' AND '2010-01-01'
          UNION ALL
          SELECT pickup_datetime,distance FROM uber_trips
          WHERE pickup_datetime BETWEEN '2009-01-01' AND '2010-01-01')
          SELECT date(pickup_datetime) AS date, AVG(distance) AS avg_distance, COUNT(*) AS num
          FROM hired_trips
          GROUP BY date
          ORDER BY num DESC
          LIMIT 10;
          