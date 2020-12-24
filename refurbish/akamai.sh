akamai_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: akamai \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/akamai_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: akamai not installed. Try running ship order akamai... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/akamai_version`
	if [ "$version" == "1.1.5" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
        		rm -rf -d "/usr/local/Garage/akamai-$version"
        		rm -f /usr/local/Garage/akamai_version
        		rm -f /usr/local/Garage/bin/akamai


		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 1JfsobQpuxmA0LZND4eTAdkl0Jr11I_uN akamai.zip
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip akamai.zip
		rm -r -d __MACOSX
		rm akamai.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! akamai succesfully refurbished. \033[0m"
	fi
}


akamai_update

