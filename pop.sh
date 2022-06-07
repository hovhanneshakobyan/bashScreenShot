#!/bin/bash
file_name=samo-$(date --iso-8601=seconds).png
A2=$(import -window root -pause 2 $file_name)
path="/home/demo/$file_name"

#zenity --info --title="welcome" --text="my hostname  is  $HOSTNAME"

#zenity --question --text="would you like be a people or diamond?" --width 300  --height 300

#zenity --list --radiolist --column "selection" --column "operation" FALSE add 

if [[ $? = 0 ]]; then 
	zenity --list \
	--radiolist \
	--title="installed" \
        --column="SCREEN?" --column="selection" \
 	TRUE add \
	TRUE selection \
	TRUE add = $A2
	#FALSE add ="$path"

	#--column="sofware" --column="version" \ 
	#"Git" "1.1";
else 
	echo "The condition didn't pass"
fi

