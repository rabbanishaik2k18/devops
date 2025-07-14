#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error: you must have super prvillages"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]

then
dnf install mysql -y
if [ $? -ne 0 ]
then
echo "install mysql is failue"
exit 1
else
echo "installing mysql is success"
fi

else
echo "mysql is already installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
dnf install git -y

if [ $? -ne 0 ]
then
echo "install git is failue"
exit 1
else
echo "installing git is success"
fi
else
echo "git is already installed"
fi