#!/bin/bash
#-gt,-lt,-eq,-ne,-le,-ge
num=$1
if [$num -gt 10]
then
echo "$num is greaterthan 10"
else
echo "$num is smallerthan 10"
fi