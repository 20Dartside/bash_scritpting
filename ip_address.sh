# extracting ip_address 

#! /bin/bash
read -p 'enter username ' u
echo "Your name is $u" 

ip_output=$(ifconfig &)
ip_address=$(echo "$ip_output" | grep 'inet ' | awk '{print $2}' | head -n 1)

echo "Your IP address is: $ip_address"

