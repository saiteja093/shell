#!/bin/bash

userid=$(id -u)
logs_folder= "/var/log/shell"
logs_file="/var/log/shell/$0.log"

if [ $userid -ne 0 ]; then
   echo "please run this script with root user access"
   exit 1
fi  
mkdir -p $logs_folder
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
   
dnf install nginx -y &>> $logs_file
validate $? "installing nginx" 

dnf install mysql -y &>> $logs_file
validate $? "installing my sql"
     
dnf install nodejs -y &>> $logs_file
validate $? "installing nodejs"
     
