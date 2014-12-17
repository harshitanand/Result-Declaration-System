/usr/bin/mysql -u root -psm info <<EOF
CREATE TABLE GEN(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),math INT(3),phy INT(3),chem INT(3),gender CHAR(1),category CHAR(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY,rank INT(3));

CREATE TABLE SC(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),math INT(3),phy INT(3),chem INT(3),gender CHAR(1),category CHAR(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY,rank INT(3));

CREATE TABLE ST(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),math INT(3),phy INT(3),chem INT(3),gender CHAR(1),category CHAR(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY,rank INT(3));

CREATE TABLE OBC(name VARCHAR(25),percentage INT(2),email VARCHAR(20),dob VARCHAR(30),math INT(3),phy INT(3),chem INT(3),gender CHAR(1),category CHAR(3),user_id INT(3) AUTO_INCREMENT PRIMARY KEY,rank INT(3));

INSERT INTO GEN SELECT * FROM qualifieduserinfo WHERE category="GEN";
alter table GEN order by rank;
INSERT INTO SC SELECT * FROM qualifieduserinfo WHERE category="SC";
alter table SC order by rank;
alter table SC ADD ct_rank AUTO_INCREMENT='1';
INSERT INTO ST SELECT * FROM qualifieduserinfo WHERE category="ST";
alter table ST order by rank;
alter table ST ADD ct_rank AUTO_INCREMENT='1';
INSERT INTO OBC SELECT * FROM qualifieduserinfo WHERE category="OBC";
alter table OBC order by rank;
alter table OBC ADD ct_rank AUTO_INCREMENT='1';
EOF
