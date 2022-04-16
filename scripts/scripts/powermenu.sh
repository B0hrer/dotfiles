#! /bin/bash

function powermenu {
	options="Cancel\nShutdown\nRestart\nSleep"
	selected=$(echo -e $options | dmenu)
	if [[ $selected = "Shutdown" ]]; then
		poweroff	
	elif [[ $selected = "Restart" ]]; then
		reboot
	elif [[ $selected = "Sleep" ]]; then
		systemctl suspend
	elif [[ $selected = "Shutdown" ]]; then
		return
	fi
}

powermenu
