#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$($0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log
R="\e[31m"
Y="\e[33m"
G="\e[32m"
N="\e[0m"
echo "script started executing at $TIMESTAMP"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo -e "$2 install....$R FAILURE $N"
    exit 1
    else
    echo -e "$2 install...$G SUCCESS $N"
    fi
}
if [ $USERID -ne 0 ]
then
echo "please get root access"
exit 1
else
echo "you are a super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "INSTALLING MYSQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "INSTALLING GIT"