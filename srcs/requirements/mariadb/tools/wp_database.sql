CREATE USER 'wpuser'@'localhost' IDENTIFIED BY '12345';
CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost' WITH GRANT OPTION;
UPDATE mysql.user SET plugin='mysql_native_password' WHERE user='root';
UPDATE mysql.user SET plugin='mysql_native_password' WHERE user='wpuser';
FLUSH PRIVILEGES;