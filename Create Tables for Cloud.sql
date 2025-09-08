CREATE DATABASE gans_test;

USE gans_test;

-- Create the 'cities' table
CREATE TABLE cities (
    City_id INT AUTO_INCREMENT, -- Automatically generated ID for each city
    City VARCHAR(255) NOT NULL, -- Name of the city
    PRIMARY KEY (City_id) -- Primary key to uniquely identify each author
);

SELECT * FROM cities;

-- Create cities_data table
CREATE TABLE cities_data(
	City_id INT AUTO_INCREMENT,
    City VARCHAR(255) NOT NULL,
    Country VARCHAR(255) NOT NULL,
    Latitude FLOAT NOT NULL,
    Longitude FLOAT NOT NULL,
    PRIMARY KEY (City_id),
    FOREIGN KEY (City_id) REFERENCES cities(City_id)
    );
 
SELECT * FROM cities_data;

-- Add foreign key to cities_data to reference with Cities
-- ALTER TABLE cities_data ADD FOREIGN KEY (City_id) REFERENCES cities(City_id);

SELECT * FROM cities_data;

-- Create the population table
CREATE TABLE population(
	City_id INT NOT NULL,
    City VARCHAR(255) NOT NULL,
    Population FLOAT NOT NULL,
	timestamp_population VARCHAR(255) NOT NULL,
    PRIMARY KEY (City_id, timestamp_population),
    FOREIGN KEY (City_id) REFERENCES cities(City_id),
    FOREIGN KEY (City_id) REFERENCES cities_data(City_id)
    );

SELECT * FROM population;

-- Add foreign key to population to reference with cities_data
-- ALTER TABLE population ADD FOREIGN KEY (City_id) REFERENCES cities_data(City_id);

-- Create a weather table
CREATE TABLE weather(
	City_id INT NOT NULL,
    City VARCHAR(255) NOT NULL,
    Forecast_time DATETIME NOT NULL,   -- Date and time of forecast
    Temperature FLOAT NOT NULL,        -- Current temperature
    Feels_like FLOAT NOT NULL,         -- Current feels like temperature
    Min_temp FLOAT NOT NULL, 
    Max_temp FLOAT NOT NULL,
    Main_weather VARCHAR(255) NOT NULL,
    Description_weather VARCHAR(255) NOT NULL, -- Description of the weather
    Wind_speed FLOAT NOT NULL,
    Rain_prob FLOAT NOT NULL,          -- Probability of rain
    Rain FLOAT NOT NULL,               -- Rain
    Data_retrieved DATETIME NOT NULL,   --
    PRIMARY KEY (City_id, Forecast_time), -- To prevent duplicates, nothing will update if there is already that city and that Forecast_time
    FOREIGN KEY (City_id) REFERENCES cities(city_id), 
    FOREIGN KEY (City_id) REFERENCES cities_data(City_id) 
);

DROP TABLE weather;

SELECT * FROM weather;

-- Add foreign key to weather to reference with cities_data
ALTER TABLE weather ADD FOREIGN KEY (City_id) REFERENCES cities_data(City_id);


-- Create cities_airports table 

CREATE TABLE cities_airports(
	iata_code VARCHAR(10) PRIMARY KEY,
    airport_name VARCHAR(250),
    City_id INT NOT NULL,               -- Foreign key linking to cities
    FOREIGN KEY (City_id) REFERENCES cities(City_id),
    FOREIGN KEY (City_id) REFERENCES cities_data(City_id) 
);

SELECT * FROM cities_airports;

DROP TABLE cities_airports;

-- Create flights table
CREATE TABLE flights(
	id INT AUTO_INCREMENT PRIMARY KEY,
    arrival_airport_iata VARCHAR(10) NOT NULL,
    departure_airport_iata VARCHAR(10),
    scheduled_arrival_time DATETIME NOT NULL,
    flight_number VARCHAR(50) NOT NULL,
    timestamp_flight DATETIME NOT NULL,
    FOREIGN KEY (arrival_airport_iata) REFERENCES cities_airports(iata_code)
);

SELECT * FROM flights;

DROP TABLE flights;