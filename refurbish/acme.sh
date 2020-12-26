acme_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: acme \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/acme_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: acme not installed. Try running ship order acme... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/acme_version`
	if [ "$version" == "0.97" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
        		rm -rf -d "/usr/local/Garage/acme-$version"
        		rm -f /usr/local/Garage/acme_version
        		rm -f /usr/local/Garage/bin/acme


		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 1OgeMS5KRC4zAi1e8w0Eg2hPi1L20PCdm acme.zip
		sha="fc621283c317faa6ca76ae3c47eb9b0e8697fe4a7985e93d0a262a99031b9ba635e5feb8c6436e90375fddb340b33cf1ca4e41450223191e1cf86e041af28346  acme.zip"
		result=`sha -c acme.zip "$sha"`
		if [ "$result" == "Incorrect" ];
		then
			echo -e "\033[91;1;4mError: Security problem \033[0m"
			echo "The downloaded file has been compromised. It has been deleted."
			echo "Your system has not been harmed."
			echo "Try again later."
			rm -f acme.zip
			rm -f cookie
			return
		fi
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip acme.zip
		rm -r -d __MACOSX
		rm acme.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! acme succesfully refurbished. \033[0m"
	fi
}


acme_update

