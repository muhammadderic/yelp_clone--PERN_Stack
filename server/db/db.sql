CREATE DATABASE yelpclone;

CREATE TABLE restaurants (
  restaurant_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  location VARCHAR(50) NOT NULL,
  price_range INT NOT NULL CHECK(price_range > 0 AND price_range <= 5)
);