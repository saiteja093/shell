#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
   echo "please run this script with root user access"
fi   
   echo "installing nginx"
dnf install nginx -y
