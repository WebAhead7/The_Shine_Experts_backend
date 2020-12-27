BEGIN;

DROP TABLE IF EXISTS users,tutorials CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  fullname VARCHAR(255) NOT NULL, 
  phone_number VARCHAR(255) NOT NULL, 
  email VARCHAR(255) NOT NULL,
  user_password VARCHAR(255) NOT NULL
);
CREATE TABLE business (
  id SERIAL PRIMARY KEY,
  business_name VARCHAR(255) NOT NULL, 
  phone_number VARCHAR(255) NOT NULL, 
  email VARCHAR(255) NOT NULL,
  business_password VARCHAR(255) NOT NULL,
  business_location VARCHAR(255) NOT NULL
);
COMMIT;
