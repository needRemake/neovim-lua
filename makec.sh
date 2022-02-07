#!/bin/bash

read -p "Compile " file

g++ $file.cxx -std=c++14 -Wall -o $file

echo Compilation complete

time ./$file
