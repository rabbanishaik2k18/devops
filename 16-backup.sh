#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIR="/home/ec2-user/app-logs/"

LOGS_FOLDER="/var/log/shellscript-logs"
LOGS_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
LOG_FILE_NAME="$LOGS_FOLDER/$LOGS_FILE-$TIMESTAMP"



VALIDATE(){

    if [ $1 -ne 0 ]
        then
        echo -e "$2 ...$R failue"
        exit 1
        else
        echo -e "$2 ... $G success"
fi
}

echo "script installed date: $TIMESTAMP" &>>$LOG_FILE_NAME



FILES_DELETE=$(find $SOURCE_DIR "*.logs" -mtime +14)&>>$LOG_FILE_NAME
echo "files to deleted : $FILES_DELETE"

while read -r file
do
echo "deleting files : $file"
done <<< $FILES_DELETE