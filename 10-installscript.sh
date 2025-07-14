#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error: you must have super prvillages"
    exit 1
fi

dnf install mysql1 -y
if [ $? -ne 0 ]
then
echo "install mysql is failue"
exit 1
else
echo "installing mysql is success"
fi

dnf install git -y