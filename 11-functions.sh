#!/bin/bash

USERID=$(id -u)
VALIDATE(){

    if [ $1 -ne 0 ]
        then
        echo "$2 ...failue"
        exit 1
        else
        echo "$2 ... success"
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
echo "mysql is already installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
dnf install git -y
VALIDATE $? "Installing git"
else
echo "git is already installed"
fi