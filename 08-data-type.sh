#!/bin/bash

num1=500
num2=500

sum=$(($num1+$num2))

echo "sum is : $sum"


# array
fruits=("apple" "banana" "mango")

##### to print fruits as horizontal.......

echo "fruits are :: ${fruits[0]}" "${fruits[1]}" "${fruits[2]}" 
echo "first/ fruit is -- ${fruits[0]}"
echo "second// fruit is -- ${fruits[1]}"
echo "third ///fruit is -- ${fruits[2]}"