/usr/bin/mysql -uroot -psm info << EOF
SELECT * FROM userinfo INTO OUTFILE '/var/lib/mysql/eligible_students.csv' FIELDS TERMINATED BY ',';
EOF
