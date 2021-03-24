#!/bin/bash
''' **************************************
    I use the application scrcpy
    https://github.com/Genymobile/scrcpy
    Thanks Genymobile.
    Thanks billniakas for help at scrip.
    **************************************
                    by Astrolavos 2019 '''
#!/bin/bash
clear
Red='\033[0;31m' #Red
Green='\033[0;32m' #Green
NoColor='\033[0m' #No Color
# Function
if_installed () {
    program_installed=$(command -v "$1" 2>/dev/null || echo FALSE)
    if [ "$program_installed" == "FALSE" ];
        then
            apotelesma="${Red}Needs to be installed"
            zenity --width 300 --height 100 --info --text "Make INSTALLATION the $1"
        else
            apotelesma="${Green}Is already installed"           
    fi
    printf "$apotelesma $1\n${NoColor}"
}
printf "Preinstalled programs needed\nto run Android2Linux:\n"
echo "________________________________________"
if_installed adb
a=$program_installed
if_installed scrcpy
b=$program_installed
if_installed zenity
c=$program_installed
if [ $a == "FALSE" ] || [ $b == "FALSE" ] || [ $c == "FALSE" ]
    then
        exit 0
    else
        # Settings for connecting Android device to linux distribution
	exodos=0
	while [ $exodos == 0 ]
		do
		if [ -f "ipaddress.txt" ]
			then #Setup after 1st time connection
				read -r ipaddress < ipaddress.txt
			else #Setup for 1st time connection
				ipaddress=$(zenity --width 300 --height 100 \
					--entry --title "Screen Cast Android 2 Linux" \enity --width 300 --height 100 \
					--entry --title "Screen Cast Android 2 Linux" \
					--text="$(printf "Give your IP address from your mobile phone.\nLogically it is like the following:\n192.168.1.3\n192.168.0.100\n10.10.10.4\n \nWhere will you find the IP address on your mobile?\n Settings> About phone> Status> IP address")" --entry-text=xxx.xxx.xxx.xxx)
				epilogi=$?
				if [ $epilogi == "1" ]
					then
						exit 0
				fi
				echo "$ipaddress" > ipaddress.txt
		fi
		# Check for the correct ip address of the connected phone
		device=$(adb connect "$ipaddress":5555)
		status_device=${device:0:17}
		if [ "$status_device" == "unable to connect" ] || [ "$status_device" == "no host in ':5555" ]
			then
				rm ipaddress.txt
				adb disconnect
				adb kill-server
				adb start-server
				adb tcpip 5555
				adb devices
			else
			exodos=1
			# Check if the connected Android device is offline
			connection=$(adb devices)
			connection_status=${connection:43:8}
			if [ "$connection_status" == "offline" ]
				then
					# Reconnect Android device
					adb kill-server
					zenity --info --width 300 --height 100 \
						--title="CAUTION!" \
						--window-icon=android2linux.png \
						--text="The android device is registered \n on your PC, but it is offline!\n You must go to:\n Settings -> Developer Options -> USB Debugging OFF\n \n \n Then run Android2Linux again."
			fi
		fi
	done
	adb start-server
	adb connect "$ipaddress":5555
	scrcpy # Run application scrcpy
fi
