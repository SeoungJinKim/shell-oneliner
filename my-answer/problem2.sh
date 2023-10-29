#!/bin/bash

#RESULT=$(basename ./problem2/* | grep "\.png$") 
#echo "$RESULT"
read -p "Please Enter Path: " path

basename ./$path/* | grep "\.png$" | while read -r line ; do
    fileName=$(basename $line .png)
    echo "Modify ${line} file png to jpg"
    magick $path/$line $path/$fileName.jpg 
done
