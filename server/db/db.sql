CREATE DATABASE yelpclone;

CREATE TABLE restaurants (
  restaurant_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  location VARCHAR(50) NOT NULL,
  price_range INT NOT NULL CHECK(price_range > 0 AND price_range <= 5)
);

-- Create New Restaurant
INSERT INTO restaurants(name, location, price_range) VALUES('mcDonald', 'New York', 3);
-- Get All Restaurants
SELECT * FROM restaurants;
-- GET One Restaurant
SELECT * FROM restaurants WHERE restaurant_id=1;
-- UPDATE restaurant
UPDATE restaurants SET name='x', location='y', price_range=1 WHERE restaurant_id=1;
-- DELETE restaurant
DELETE FROM restaurants WHERE restaurant_id=1;