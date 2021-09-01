
-- examine tables
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;

SELECT * FROM riders, cars;

-- not so useful join
SELECT * FROM trips
LEFT JOIN riders
  ON trips.rider_id = riders.id;

-- inner join trips and cars on ID primary keys
SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;

-- stack both riders tables together
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

-- find average cost of a Lyft trip
SELECT AVG(cost)
FROM trips;

-- find irregular users
SELECT *
FROM riders
WHERE total_trips < 500;

-- find active rides
SELECT *
FROM cars
WHERE status = 'active';

-- safety recall: find cars that have highest trips completed
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;