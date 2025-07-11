#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR : You must have root access to install this scriipt"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "installing mysql is failure"
else
    echo "installing mysql is success"
fi


dnf install git -y

if [ $? -ne 0 ]
then
    echo "installing git is failure"
else
    echo "installing git is success"
fi