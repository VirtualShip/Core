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
		gdown https://drive.google.com/uc?id=1IOKoh-n4vTgdxktPBLl7oP0djUSleK7t
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip aalib.zip
		rm -r -d __MACOSX
		rm aalib.zip
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! aalib succesfully refurbished. \033[0m"
	fi
}

aardvark_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: aardvark_shell_utils \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/aardvark_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: aardvark_shell_utils not installed. Try running ship order aardvark_shell_utils... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/aardvark_version`
	if [ "$version" == "1.0" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
		rm -rf -d "aardvark_shell_utils"
		rm -rf aardvark_version
		rm -rf /usr/local/Garage/bin/filebase
		rm -rf /usr/local/Garage/bin/fileext
		rm -rf /usr/local/Garage/bin/realpath
		rm -rf /usr/local/Garage/man/man1/filebase.1
		rm -rf /usr/local/Garage/man/man1/fileext.1
		rm -rf /usr/local/Garage/man/man1/realpath.1
 	
		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdown https://drive.google.com/uc?id=1E4Rv7orWsCK57VGES45hveEb5a1m-o-v
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip aardvark.zip
		rm -r -d __MACOSX
		rm aardvark.zip
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! aardvark_shell_utils succesfully refurbished. \033[0m"
	fi
}

