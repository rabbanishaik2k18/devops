#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR : You must have root access to install this scriipt"
else

dnf install mysql -y