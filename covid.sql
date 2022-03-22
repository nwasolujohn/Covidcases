
--create a new user 
CREATE USER 'etl'@'localhost'
--create a new db
CREATE DATABASE Covid COLLATE = 'utf8nb4_unicode_ci';
--grant the user access to files in the selected folder
GRANT ALL ON Covid.* TO 'etl'@'localhost';
GRANT FILE ON *.* TO 'etl'@'localhost'
--using flush to allow the changes take effect
FLUSH PRIVILEGES;

CREATE TABLE CovidCasesAb (
	PRIMARY KEY INT NOT NULL AUTO_INCREMENT,
	Date DATE NOT NULL DEFAULT NOW(),
	Location VARCHAR(255) NULL,
	Population INT NOT NULL,
	Total Cases INT NULL,
	Active Cases INT NULL,
	Recovered Cases INT NULL,
	Deaths INT NULL,
	One dose INT NULL,
	Fully Vacinated NULL,
)
COLLATE = 'utf8mb4_unicode_ci'

