bash-completion_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: bash-completion \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/bash-completion_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: bash-completion not installed. Try running ship order bash-completion... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/bash-completion_version`
	if [ "$version" == 2.11 ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
	
        rm -rf -d "/usr/local/Garage/bash-completion-$version"
        rm -f /usr/local/Garage/bash-completion_version
        rm -rf -d /usr/local/Garage/share/bash-completion
        rm -rf -d /usr/local/Garage/share/cmake/bash-completion
        rm -f /usr/local/Garage/share/pkgconfig/bash-completion.pc
        rm -f /usr/local/Garage/etc/profile.d/bash_completion.sh
	
	echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
	sleep 1
	cd /usr/local/Garage
	echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
	sleep 2
	gdrived 1nUOZ1srI8uDpy1KZLd74fddxaxqgnoie bash-completion.zip
	sha="77cdcac4f91caeb9eedbf62e795298cea798f65358200c0ac33523b2d79c8dac8f93bc07ea0113410a294f00f477cf3c6cceb7b5cbedecf6ee444f7a6a18dd45  bash-completion.zip"
	result=`sha -c bash-completion.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f bash-completion.zip
		rm -f cookie
		return
	fi
	echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
	sleep 2
	unzip bash-completion.zip
	rm -r -d __MACOSX
	rm bash-completion.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
	echo -e "\033[92;1;4m🏡 Package received! bash-completion succesfully refurbished. \033[0m"
}


bash-completion_update
