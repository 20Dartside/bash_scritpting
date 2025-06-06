read -p 'Enter user name to remove : ' u
userdel -rf $u
echo 'user removed successfuly : '
id $u
