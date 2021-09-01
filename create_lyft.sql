CREATE DATABASE lyfts;

CREATE TABLE cars (
    id INT,
    model TEXT,
    OS TEXT,
    status TEXT,
    trips_completed INT
);

CREATE TABLE riders (
    id INT,
    first TEXT,
    last TEXT,
    username TEXT,
    rating INT,
    total_trips INT,
    referred INT
);

CREATE TABLE riders2 (
    id INT,
    first TEXT,
    last TEXT,
    username TEXT,
    rating INT,
    total_trips INT,
    referred INT
);

CREATE TABLE trips (
    id INT,
    date TEXT,
    pickup TEXT,
    dropoff TEXT,
    rider_d INT,
    car_id INT,
    car_type TEXT,
    cost INT
);

COPY cars(id, model, OS, status, trips_completed)
FROM '/Users/mallory/Desktop/DataEngineering/CodeAcademyProjects/SQL/LyftAnalysis/cars.csv'
DELIMITER ','
CSV HEADER;


ALTER TABLE riders
ALTER COLUMN rating TYPE DECIMAL;
-- insert csv info into postgresdb
COPY riders(id, first, last, username, rating, total_trips, referred)
FROM '/Users/mallory/Desktop/DataEngineering/CodeAcademyProjects/SQL/LyftAnalysis/riders.csv'
DELIMITER ','
CSV HEADER;


ALTER TABLE riders2
ALTER COLUMN rating TYPE DECIMAL;
-- insert csv info into postgresdb
COPY riders2(id, first, last, username, rating, total_trips, referred)
FROM '/Users/mallory/Desktop/DataEngineering/CodeAcademyProjects/SQL/LyftAnalysis/riders2.csv'
DELIMITER ','
CSV HEADER;


ALTER TABLE trips
RENAME COLUMN rider_d TO rider_id;
ALTER TABLE trips
ALTER COLUMN cost TYPE DECIMAL;
-- insert csv info into postgresdb
COPY trips(id, date, pickup, dropoff, rider_id, car_id, car_type, cost)
FROM '/Users/mallory/Desktop/DataEngineering/CodeAcademyProjects/SQL/LyftAnalysis/trips.csv'
DELIMITER ','
CSV HEADER;