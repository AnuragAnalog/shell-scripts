#!/bin/bash

if [ $# -ne 2 ]
then
      echo "Syntax: ./txt2pdf <input-filename> <output-filename>"
fi

echo "Converting your file to pdf....."
sleep 2

enscript $1 -o - | ps2pdf - $2

echo "$2 is ready now"
