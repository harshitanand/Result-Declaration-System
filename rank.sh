/usr/bin/mysql -u root -psneha info <<EOF
CREATE TABLE qualifieduserinfo(name VARCHAR(25),percentage DECIMAL(2,2),email VARCHAR(20),dob VARCHAR(30),math INT(3),phy INT(3),chem INT(3),gender CHAR(1),category CHAR(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY,rank INT(3));
EOF
/usr/bin/mysql -u root -psneha info --local-infile <<EOF
LOAD DATA LOCAL INFILE '/var/lib/mysql/eligible_students.csv' INTO TABLE qualifieduserinfo;
ALTER TABLE qualifieduserinfo ORDER BY rank INC; 
EOF

