un_a52dec () {
	echo -e "\033[34;1;4m🖥️  Processing return: a52dec \033[0m"
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
	version=`cat a52dec_version`
	rm -rf -d "a52dec-$version"
	rm -rf a52dec_version
	rm -rf -d 
	rm -rf /usr/local/Garage/bin/a52dec
	rm -rf /usr/local/Garage/bin/extract_a52
	rm -rf -d /usr/local/Garage/include/a52dec
	rm -rf /usr/local/Garage/lib/liba52.a
	rm -rf /usr/local/Garage/lib/liba52.la
	rm -rf /usr/local/Garage/man/man1/a52dec.1
	rm -rf /usr/local/Garage/man/man1/extract_a52.1

	echo -e "\033[92;1;4m🏭 Package arrived at store! a52dec successfully returned. \033[0m"
}

un_aalib () {
	echo -e "\033[34;1;4m🖥️  Processing return: aalib \033[0m"
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
	version=`cat aalib_version`
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

	echo -e "\033[92;1;4m🏭 Package arrived at store! aalib successfully returned. \033[0m"
}

un_aardvark () {
	echo -e "\033[34;1;4m🖥️  Processing return: aardvark_shell_utils \033[0m"
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

	rm -rf -d "aardvark_shell_utils"
	rm -rf aardvark_version
	rm -rf /usr/local/Garage/bin/filebase
	rm -rf /usr/local/Garage/bin/fileext
	rm -rf /usr/local/Garage/bin/realpath
	rm -rf /usr/local/Garage/man/man1/filebase.1
	rm -rf /usr/local/Garage/man/man1/fileext.1
	rm -rf /usr/local/Garage/man/man1/realpath.1

	echo -e "\033[92;1;4m🏭 Package arrived at store! aardvark_shell_utils successfully returned. \033[0m"
}

