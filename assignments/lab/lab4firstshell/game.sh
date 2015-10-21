#!/bin/sh

echo "You wake up in a bare room."
echo "You look around and see there is one window, a door and a dresser."
echo "What do you want to look at?"
echo -e "Window\tDoor\tDresser"
key=0
read str1

door(){
if [ $key == 1 ]
then
	echo "You can open the door now."
	echo -e "Unlock\tBack\n"
	read str2
	while [ "$str2" != "Unlock" -a "$str2" != "Back" ]
	do
		echo "Invalid Command"
		echo -e "Unlock\tBack\n"
		read str2
	done
	if [ "$str2" = "Unlock" ]
	then
		echo "You unlock the door and escape."
		echo "Congrats you win!!"
		exit 0
	fi
	if [ "$str2" = "Back" ]
	then
		echo "Look at.."
		echo -e "Window\tDoor\tDresser\n"
		read str1
	fi
else
	echo "You can try to open the door."
	echo -e "Push\tPull\n"
	read str2
	while [ "$str2" != "Push" -a "$str2" != "Pull" ]
	do
		echo "Invalid Command"
		echo -e "Push\tPull\n"
		read str2
	done
	echo "The door is locked."
	echo -e "\tBack\n"
	read str2
	echo "Look at..."
	echo -e "Window\tDoor\tDresser\n"
	read str1
fi
}
	
dresser() 
{
	echo "It is a clean dresser with only one drawer"
	echo "Open drawer?"
	echo -e "Yes\tNo\n"
	read str2
	if [ "$str2" = "Yes" ]
	then
		echo "You open the drawer."
		echo "A key lies inside."
		echo "Grab key?"
		echo -e "Yes\tNo\n"
		read str2
		if [ "$str2" = "Yes" ]
		then
			echo "you grab the key. Good job."
			key=1
			echo "Close Drawer?"
			echo -e "Yes\n"
			read str2
			echo -e "You close it, knowing your mom told you to always leave things the way you found it."
		else
			echo "You don't grab it, despite knowing you should have."
			echo "You may want to sleep again, your brain isn't working properly."
		fi
	else
		echo "You refuse to touch the drawer. There may be demons inside for all you know."
	fi
	echo -e "\tBack\n"
	read str2
	echo "Look at..."
	echo -e "Window\tDoor\tDresser\n"
	read str1
}	

window()
{
if [ $key == 1 ]
then
	echo "You can open the window."
	echo -e "Unlock\tBack\n"
	read str2
	while [ "$str2" != "Unlock" -a " $str2" != "Back" ]
	 do
		echo "Invalid Command"
		echo -e "Unlock\tBack\n"
		read str2
	done
	if [ "$str2" = "Unlock" ]
	then
		echo "You can unlock the window and escape."
		echo "Do you want to jump from the window?"
		echo -e "Yes\tNo\n"
		read str3
		if [ "$str3" = "Yes" ]
		then
			echo "You jump off 15 floor"
			echo "Enjoy the last 3 seconds in your life..."
			sleep 3
			echo "Anyway, congrats your escape."
			exit 0
		fi
		if [ "$str3" = "No" ]
		then
			echo -e "\tBack\n"
			read str2
		fi
	fi
	if [ "$str2" = "Back" ]
	then
		echo "Look at.."
		echo -e "Window\tDoor\tDresser\n"
		read str1
	fi
else
	echo "You can try to open the window."
	echo -e "Push\tPull\n"
	read str2
	while [ "$str2" != "Push" -a "$str2" != "Pull" ]
	do
		echo "Invalid Command"
		echo -e "Push\tPull\n"
		read str2
	done
	echo "The window is locked."
	echo -e  "\tBack\n"
	read str2
	echo "Look at..."
	echo -e "Window\tDoor\tDresser\n"
	read str1
fi
}
		
while [ 1 ]
do 
	if [ "$str1" = "Door" ]
	then
		 door
	elif [ "$str1" = "Window" ]
	then
		 window
	elif [ "$str1" = "Dresser" ]
	then
		 dresser
	else
		echo "Invalid command."
		echo -e "Window\tDoor\tDresser\n"
		read str1
	fi
done

read str2

