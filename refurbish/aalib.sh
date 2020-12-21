aalib_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: aalib \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/aalib_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: aalib not installed. Try running ship order aalib... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/aalib_version`
	if [ "$version" == "1.2" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
		rm -rf -d "aalib-$version"
		rm -rf aalib_version
		rm -rf /usr/local/Garage/bin/aafire
		rm -rf /usr/local/Garage/bin/aainfo
		rm -rf /usr/local/Garage/bin/aasavefont
		rm -rf /usr/local/Garage/bin/aatest
		rm -rf /usr/local/Garage/include/aalib.h
		rm -rf /usr/local/Garage/info/aalib.info
		rm -rf /usr/local/Garage/info/dir
		rm -rf /usr/local/Garage/lib/libaa.a
		rm -rf /usr/local/Garage/lib/libaa.la
 	
		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 1CCJFF1ZRC25WxbYZWdXlp7ZBNt7-0BJS aalib.zip
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip aalib.zip
		rm -r -d __MACOSX
		rm aalib.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! aalib succesfully refurbished. \033[0m"
	fi
}
