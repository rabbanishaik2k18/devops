#!/bin/bash

USEDID=$(id -u)

if [ $USERID -ne 0]
then 
echo "Error: you must have super prvillages"

dnf install mysql1 -y