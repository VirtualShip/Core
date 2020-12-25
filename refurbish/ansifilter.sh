ansifilter_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: ansifilter \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/ansifilter_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: ansifilter not installed. Try running ship order ansifilter... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/ansifilter_version`
	if [ "$version" == "1.1.5" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
        rm -rf -d "/usr/local/Garage/ansifilter-$version"
        rm -f /usr/local/Garage/ansifilter_version
        rm -f /usr/local/Garage/bin/ansifilter
        rm -rf -d /usr/local/Garage/share/doc/ansifilter
        rm -rf -d /usr/local/Garage/share/man/man1/ansifilter.1

		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 14IlSmhSyK2Q-OR7MtgBRz_eKqV0NoUYV ansifilter.zip
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip ansifilter.zip
		rm -r -d __MACOSX
		rm ansifilter.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! ansifilter succesfully refurbished. \033[0m"
	fi
}


ansifilter_update

