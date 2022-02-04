#!/bin/bash
read -p "Compilefile " file

g++ $file.cpp -std=c++14 -Wall -o $file

time ./$file
