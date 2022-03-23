LOAD DATA
        INFILE "C/Users/nwaso/Desktop/work/git/COVID-19_in_Alberta__Current_cases_by_local_geographic_area.csv"
        INTO TABLE CovidCasesAb
        FIELDS TERMINATED BY ','
                OPTIONALLY ENCLOSED BY '"'
                ESCAPED BY '"'
        LINES TERMINATED BY '\n'
        IGNORE 1 LINES
        (Date, Location, Population, TotalCases, ActiveCases, RecoveredCases, Deaths, OneDose, FullyVacinnated);
