select user, host, plugin from mysql.user;
DROP USER 'root'@'%';

CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'ducanh';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;


CREATE USER 'ducanh'@'%' IDENTIFIED WITH mysql_native_password BY 'ducanh';
GRANT ALL PRIVILEGES ON *.* TO 'ducanh'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;


--it is executed from SQL-Yog
CREATE TABLE ducanh.my_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(50),
    age INT
);

INSERT INTO ducanh.my_table (NAME, age) VALUES ('John', 30), ('Alice', 25), ('Bob', 35), ('Emily', 28);

SELECT * FROM ducanh.my_table;
