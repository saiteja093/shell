#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
   echo "please run this script with root user access"
   exit 1
fi  
   
echo "installing nginx"
dnf install nginx -y
 
 if [ $? -ne 0 ]; then
    echo "installing nginx ..... failure"
    exit 1
else
    echo "installing nginx ......success"
fi        

echo "installing my sql"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "installing my sql ..... failure"
    exit 1
else
    echo "installing my sql ......success"
fi        

echo "installing nodejs"
dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "installing nodejs ..... failure"
    exit 1
else
    echo "installing nodejs ......success"
fi      

