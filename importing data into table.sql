LOAD DATA LOCAL INFILE 'C:/Users/zeekh/OneDrive/Desktop/my_project/superstore_clean.csv'
INTO TABLE superstore
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;