#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){

    if [ $1 -ne 0 ]
        then
        echo -e "$2 ...$R failue"
        exit 1
        else
        echo -e "$2 ... $G success"
fi
}

if [ $USERID -ne 0 ]
then 
    echo "Error: you must have super prvillages"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
        dnf install mysql -y
        VALIDATE $? "Installing mysql sucess"

else
echo -e "mysql is already $Y installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
dnf install git -y
VALIDATE $? "Installing git"
else
echo -e "git is already $Y installed"
fi