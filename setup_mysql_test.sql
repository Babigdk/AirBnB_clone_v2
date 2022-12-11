<<<<<<< HEAD
-- Script to create a MySQL server with the database hbnb_test_db.
CREATE DATABASE IF NOT EXISTS hbnb_test_db;
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost';
SET PASSWORD FOR 'hbnb_test'@'localhost' = 'hbnb_test_pwd';
GRANT USAGE ON *.* TO 'hbnb_test'@'localhost';
GRANT SELECT ON `performance_schema`.* TO 'hbnb_test'@'localhost';
GRANT ALL PRIVILEGES ON `hbnb_test_db`.* TO 'hbnb_test'@'localhost';
=======
-- Creates the database hbnb_test_db with specified paramenters
-- Create database
CREATE DATABASE IF NOT EXISTS hbnb_test_db;
-- Creates user if doesn't exist
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost';
-- Sets password for user
SET PASSWORD FOR 'hbnb_test'@'localhost' = 'hbnb_test_pwd';
-- Grants privileges to user on database
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';
-- Grants select privileges to user on performance_schema database
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';
-- Flush privileges
FLUSH PRIVILEGES;
>>>>>>> 1d1ce3f8855858bbe28f1137f2b8da40c8f9af22
