#!/bin/bash

#read -p "Compile " file

#g++ $file.cxx -std=c++14 -Wall -o $file
g++ $1.cxx -std=c++14 -Wall -o $1

#echo Compilation complete

#time ./$file
time ./$1
