automake_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: automake \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/automake_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: automake not installed. Try running ship order automake... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/automake_version`
	if [ "$version" == "1.16" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
        rm -rf -d "/usr/local/Garage/automake-$version"
        rm -f /usr/local/Garage/automake_version
        rm -f /usr/local/Garage/bin/automake
        rm -f /usr/local/Garage/bin/aclocal-1.16
        rm -f /usr/local/Garage/bin/aclocal
        rm -f /usr/local/Garage/bin/automake-1.16
        rm -rf -d /usr/local/Garage/share/aclocal
        rm -rf -d /usr/local/Garage/share/aclocal-1.16
        rm -rf -d /usr/local/Garage/share/automake-1.16
        rm -rf -d /usr/local/Garage/share/doc/automake
        rm -rf -d /usr/local/Garage/share/man/man1/automake.1
        rm -rf -d /usr/local/Garage/share/man/man1/automake-1.16.1
        rm -rf -d /usr/local/Garage/share/man/man1/aclocal.1
        rm -rf -d /usr/local/Garage/share/man/man1/aclocal-1.16.1
        rm -f /usr/local/Garage/share/info/automake-history.info
        rm -f /usr/local/Garage/share/info/automake.info
        rm -f /usr/local/Garage/share/info/automake.info-1
        rm -f /usr/local/Garage/share/info/automake.info-2
        rm -f /usr/local/Garage/share/info/dir

		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 14IlSmhSyK2Q-OR7MtgBRz_eKqV0NoUYV automake.zip
		sha="2789e443c259014e328349cdbf4f9243e80ea1a8f1fde241f7de099ab10df82ed481e07cffd1d5ea4561a554677789606970dc577655ff6053a85a2a2f6a81b0  ansifilter.zip"
		result=`sha -c automake.zip "$sha"`
		if [ "$result" == "Incorrect" ];
		then
			echo -e "\033[91;1;4mError: Security problem \033[0m"
			echo "The downloaded file has been compromised. It has been deleted."
			echo "Your system has not been harmed."
			echo "Try again later."
			rm -f automake.zip
			rm -f cookie
			return
		fi
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip automake.zip
		rm -r -d __MACOSX
		rm automake.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! automake succesfully refurbished. \033[0m"
	fi
}


automake_update

