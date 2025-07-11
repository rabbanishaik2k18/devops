#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR : You must have root access to install this scriipt"
fi

dnf install mysql -y

dnf install git -y