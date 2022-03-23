
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
	PrimaryKey INT NOT NULL AUTO_INCREMENT,
	Date DATE NOT NULL DEFAULT NOW(),
	Location VARCHAR(255) NULL,
	Population INT NOT NULL DEFAULT 0,
	TotalCases INT NULL,
	ActiveCases INT NULL,
	Recovered Cases INT NULL,
	Deaths INT NULL,
	OneDose INT NULL,
	FullyVacinated INT NULL,
	PRIMARY KEY (PrimaryKey)
)
COLLATE = 'utf8mb4_unicode_ci'

