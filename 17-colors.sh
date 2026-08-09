#!/bin/bash
# sudo sh 14-loops.sh nginx mysql nodejs

userid=$(id -u)
logs_folder="/var/log/shell"
logs_file="/var/log/shell/$0.log"
r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"

if [ $userid -ne 0 ]; then
   echo -e "$r please run this script with root user access $n" | tee -a $logs_file
   exit 1
fi  
mkdir -p $logs_folder
#### by default shell will not execute, only exectue when it will call
validate()
{
    if [ $1 -ne 0 ]; then
       echo -e "$2 ..... $r failure $n" | tee -a $logs_file
       exit 1
   else
       echo -e "$2 ......$y success $n" | tee -a $logs_file
    fi        
}
   
for package in $@ # sudo sh 14-loops.sh nginx mysql nodejs
do
  dnf list installed $package &>>$logs_file
  if [ $? -ne 0 ]; then 
     echo -e "$g $package not installed, installing now $n"
     dnf install $package -y &>>$logs_file
     validate $? "package installation"
    else
     echo -e "$y $package alredy installed, skipping $n"
    fi
done