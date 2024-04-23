#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "please get root access"
else
echo "You are a super user"
fi
dnf install mysql -y
if [ $? -ne 0]
then
echo "install...Fail"
exit 1
else
echo "install...success"
fi
dnf install git -y
if [ $? -ne 0]
then
echo "install...Fail"
exit 1
else
echo "install...success"
fi
echo "is script proceeding?"