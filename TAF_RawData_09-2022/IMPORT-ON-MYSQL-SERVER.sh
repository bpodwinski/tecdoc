#!/bin/bash
# import all sql files from folder in mysql database

PATH_TO_SQL_FILES="/path_to_folder_with_sql_files/"
MYSQL_SERVER="localhost"
MYSQL_PORT=3306
MYSQL_DATABASE="name_database"
MYSQL_USER="name_user"
MYSQL_PASSWORD="your_password"

for sql_file in $PATH_TO_SQL_FILES*.sql ; do echo $sql_file; mysql -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" < $sql_file ; done

echo FINISHED