bash-completion_install () {
	sha="77cdcac4f91caeb9eedbf62e795298cea798f65358200c0ac33523b2d79c8dac8f93bc07ea0113410a294f00f477cf3c6cceb7b5cbedecf6ee444f7a6a18dd45  bash-completion.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: bash-completion \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1nUOZ1srI8uDpy1KZLd74fddxaxqgnoie bash-completion.zip
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
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
	unzip bash-completion.zip
	rm -rf -d __MACOSX
	rm bash-completion.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

bash-completion_install
