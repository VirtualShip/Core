a52dec_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: a52dec \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/a52dec_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: a52dec not installed. Try running ship order a52dec... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/a52dec_version`
	if [ "$version" == "0.7.4" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
		rm -rf -d "a52dec-$version"
		rm -rf a52dec_version
		rm -rf /usr/local/Garage/bin/a52dec
		rm -rf /usr/local/Garage/bin/extract_a52
		rm -rf -d /usr/local/Garage/include/a52dec
		rm -rf /usr/local/Garage/lib/liba52.a
		rm -rf /usr/local/Garage/lib/liba52.la
		rm -rf /usr/local/Garage/man/man1/a52dec.1
		rm -rf /usr/local/Garage/man/man1/extract_a52.1
 	
		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdown https://drive.google.com/uc?id=1QwAr-b4cd8hhgMJh92HVDck4z-axV7-P
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip a52dec.zip
		rm -r -d __MACOSX
		rm a52dec.zip
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! a52dec succesfully refurbished. \033[0m"
	fi
}
	
