#!/bin/bash

USERID=$(id -u)

SOUR_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/Shell-script-log"
LOGS_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
LOG_FILE_NAME="$LOGS_FOLDER/$LOGS_FILE-$TIMESTAMP"



USAGE(){
    echo " usage :: sh 18-zipbackups.sh <SOUR_DIR> <DEST_DIR> <DAYS>"
}

echo "script installed date: $TIMESTAMP" &>>$LOG_FILE_NAME
