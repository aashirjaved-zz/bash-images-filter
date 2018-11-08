#!/bin/bash 
yourfilenames=`ls images/*.png`
for eachfile in $yourfilenames 
do
   feh $eachfile &
   read -rsn1 input
   if [ "$input" = "a" ]; then
     cp $eachfile human/
     echo "human"
     
 fi
 if [ "$input" = "s" ]; then
     cp $eachfile car/
     echo "car"
     
 fi
  if [ "$input" = "d" ]; then
     cp $eachfile others/
     echo "others"
 fi
done