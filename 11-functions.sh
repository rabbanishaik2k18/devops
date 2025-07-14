#!/bin/bash

USERID=$(id -u)

VALIDATE(){

    if [ $? -ne 0 ]
    then
        dnf install mysql -y
        if [ $? -ne 0 ]
        then
        echo "install mysql is failue"
        exit 1


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
        VALIDATE $? "installing mysql"
else
echo "mysql is already installed"
fi

dnf list installed git
VALIDATE $? "installing git"

else
echo "git is already installed"
fi