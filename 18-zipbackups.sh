#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-600}

LOGS_FOLDER="/home/ec2-user/Shell-script-log"
LOGS_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
LOG_FILE_NAME="$LOGS_FOLDER/$LOGS_FILE-$TIMESTAMP"

USAGE(){
    echo "usage :: sh 18-zipbackups.sh <SOURCE_DIR> <DEST_DIR>"
    exit 1
}

mkdir -p /home/ec2-user/Shell-script-log

if [ $# -lt 2 ]
then 
USAGE
fi
if [ ! -d $SOURCE_DIR ]
then
echo "$SOURCE_DIR does not exists"

fi
if [ ! -d $DEST_DIR ]
then
echo "$DEST_DIR does not exists"
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)
echo "files are : $FILES"


echo "script installed date: $TIMESTAMP" &>>$LOG_FILE_NAME


  