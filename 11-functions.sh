#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
   echo "please run this script with root user access"
   exit 1
fi  
#### by default shell will not execute, only exectue when it will call
validate()
{
    if [ $1 -ne 0 ]; then
       echo "$2 ..... failure"
       exit 1
   else
       echo "$2 ......success"
    fi        
}
   
dnf install nginx -y
validate $? "installing nginx" 

dnf install mysql -y
validate $? "installing my sql"
     
dnf install nodejs -y
validate $? "installing nodejs"
     

