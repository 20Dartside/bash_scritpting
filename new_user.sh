#! /bin/bash
##verify user exist or not otherwise create user

read -p "user name : " u
if id $u ; then
echo "user $u Already exists ...!!!"
else
echo "  Creating a new user $u "
read -p "user name : " u
useradd $u
read -s -p " password :" p
echo "$p" | passwd --stdin $u
echo "$u:$p" | sudo chpasswd
fi

