./import.sh;
/usr/bin/mysql -u root -psm info<<EOFMYSQL
ALTER TABLE userinfo ADD eligible int(1) DEFAULT '0';
UPDATE userinfo SET eligible='1' WHERE percentage>59;
EOFMYSQL
./export.sh;
libreoffice /var/lib/mysql/eligible_students.csv;
