clear
/usr/bin/mysql -h localhost -u root -psm info --local-infile <<EOF
LOAD DATA local INFILE "/home/sneha/Desktop/Project/addr.csv"
INTO TABLE userinfo
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n';
EOF


