#!/bin/bash

echo "Setup and Configure Server"

file_name=config.yaml

if [ -d "config" ]
then 
 echo"reading config directory contents"
 config_files=$(ls config)
else
 echo "config dir not found. Creating one"
 mkdir config 
fi

echo "using file $file_name to configure"

echo "here are all configuration files: $config_files"

echo "all params: $*"
echo "number of params: $#"

for param in $*
do
echo $param
done

sum=0
while true
 do
  read -p "enter a score: " score
  sum = $(($sum + $score)) 
  echo "total score: $sum"
 done
