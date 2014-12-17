ENTRY=`zenity --password --username`
user=`echo $ENTRY | cut -d'|' -f1`
pass=`echo $ENTRY | cut -d'|' -f2`
if [ "$user" = "root"  -a "$pass" = "sm" ]
then
	zenity --info \
	--text="you logged in as admin !"
	/usr/bin/mysql -u$user -p$pass <<EOFMYSQL
	CREATE DATABASE info;
	USE info;
	CREATE TABLE userinfo(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),math INT(3),phy INT(3),chem INT(3),gender 	CHAR(1),category CHAR(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY);
	CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';
EOFMYSQL
else 
	if [ "$user" = "user"  -a "$pass" = "user" ]
	then
		zenity --info \
		--text="you logged in as user!"
		./userdata.sh
	fi
fi
