/usr/bin/mysql -u root -psm info << MYSQLEOF
CREATE TABLE computer(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),gender CHAR(1),category CHAR(3),rank INT(3),ct_rank INT(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY);

CREATE TABLE stat(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),gender CHAR(1),category CHAR(3),rank INT(3),ct_rank INT(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY);

CREATE TABLE physics(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),gender CHAR(1),category CHAR(3),rank INT(3),ct_rank INT(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY);

CREATE TABLE chemistry(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),gender CHAR(1),category CHAR(3),rank INT(3),ct_rank INT(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY);

CREATE TABLE mathematics(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),gender CHAR(1),category CHAR(3),rank INT(3),ct_rank INT(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY);

CREATE TABLE geophysics(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),gender CHAR(1),category CHAR(3),rank INT(3),ct_rank INT(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY);

MYSQLEOF
