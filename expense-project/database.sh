#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/Shell-script-log"
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
CHECK_ROOT(){
if [ $USERID -ne 0 ]
then 
    echo "Error: you must have super prvillages"
    exit 1
fi
}

CHECK_ROOT

dnf install mysql-server -y
VALIDATE $? "installing mysql"

systemctl enable mysqld
VALIDATE $? "enable mysql"

systemctl start mysqld
VALIDATE $? "start mysql"