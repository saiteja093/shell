#!/bin/bash

echo "please enter your user_name :: "
read user_name 

echo "your user_name is mentioned bellow $user_name"

echo "please enter your password :: "
read -s password # read -s "read -s" is to hide the readed value {whatever you enter in the field is not visable}

echo "your password = $password"