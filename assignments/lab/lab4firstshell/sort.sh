#!/bin/sh
echo "please input a number list:"
read -a A
for (( i=0 ; i<${#A[@]} ; i++ ))
do
  for (( j=${#A[@]} - 1 ; j>i ; j-- ))
  do
    #echo $j
    if  [[ ${A[j]} -lt ${A[j-1]} ]]
    then
       t=${A[j]}
       A[j]=${A[j-1]}
       A[j-1]=$t
    fi
  done
done
echo "after sorting:"
echo ${A[@]}
