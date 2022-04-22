

#!/bin/bash

echo "Select an option"

echo "1.- Search an user"
echo "2.- kill process owned by the specific user"
echo "3.- kill process by web browser (Firefox)"
echo "4.- Show IP Address"
echo "5.- Search the current user"
echo "6.- Add a new group"
echo "7.- Take a look in google"
echo "8.- Exit"

read option
case $option in
  1)
    search_user(){
		echo "Type an user name":read User
		set varName = $(groups $User)
		if $varName &>/dev/null; then
			echo "User not found";
		else
			echo "User already exists in a group";
		fi
	}
  ;;
  2)
	kill_process_user(){
		killall -u {user} process
	}
  ;;
  3)
	kill_process_browser(){
		killall -t pts/0 firefox
	}
  ;;
  4)
    show_ip(){
		ip addr
		hostname -I
	}
  ;;
  5)
	echo "$USER"
  ;;
  6)
	add_new_group(){
		addgroup newgroup --shell /bin/sh
	}
  ;;
  7)
	search_in_google(){
		open -a Google\ Chrome "https://google.com"
	}
  ;;
  8)
	kill -9 $PPID
  ;;
esac