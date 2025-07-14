#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "Error: you must have super prvillages"
fi

dnf install mysql1 -y