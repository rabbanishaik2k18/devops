#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error: you must have super prvillages"
    exit 1
fi



dnf install mysql1 -y

dnf install git -y