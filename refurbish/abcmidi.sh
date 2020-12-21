abcmidi_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: abcmidi \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/abcmidi_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: abcmidi not installed. Try running ship order abcmidi... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/abcmidi_version`
	if [ "$version" == "2020.12.10" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
		rm -rf -d "abcmidi-$version"
		rm -rf /usr/local/Garage/bin/abc2abc
        		rm -rf /usr/local/Garage/bin/abc2midi
        		rm -rf /usr/local/Garage/bin/abcmatch
        		rm -rf /usr/local/Garage/bin/mftext
        		rm -rf /usr/local/Garage/bin/midi2abc
        		rm -rf /usr/local/Garage/bin/midicopy
        		rm -rf /usr/local/Garage/bin/yaps
        		rm -rf /usr/local/Garage/share/doc/
        		rm -rf /usr/local/Garage/share/man/man1/abc2abc.1
        		rm -rf /usr/local/Garage/share/man/man1/abc2midi.1
        		rm -rf /usr/local/Garage/share/man/man1/abcmatch.1
        		rm -rf /usr/local/Garage/share/man/man1/mftext.1
        		rm -rf /usr/local/Garage/share/man/man1/midi2abc.1
        		rm -rf /usr/local/Garage/share/man/man1/midicopy.1
        		rm -rf /usr/local/Garage/share/man/man1/yaps.1cmidi
		rm -rf /usr/local/Garage/abcmidi_version


		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 17jHSgzoNpkzUP8q63fuGKfvOFl9K1un8 abcmidi.zip
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip abcmidi.zip
		rm -r -d __MACOSX
		rm abcmidi.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! abcmidi succesfully refurbished. \033[0m"
	fi
}


abcmidi_update

