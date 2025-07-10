#!/bin/bash

echo "all variables : $@"
echo "all numbers : $#"
echo "script name : $0"
echo "script current directory: $PWD"
echo "home directory for running script : $HOME"
echo "which user is running script : $USER"
echo "process id for current script : $$"
sleep 60 &
echo "process id for last command in back ground" : $!