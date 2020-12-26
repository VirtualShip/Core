aardvark_install () {
	sha="3a0c94f7c6945105d9da18f164cd5d212b01e138ad8ecb206781d3287409cf49290efb074dae831bfedbd9cbba3eaf26a9ce906ec82fba98a716ce27293e731e  aardvark.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: aardvark \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1VpZZe5jjtzE42MlUZPG2jD1U3zbDdom8 aardvark.zip
	result=`sha -c aardvark.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f aardvark.zip
		rm -f cookie
		return
	fi
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
	sleep 2
	unzip aardvark.zip
	rm -rf -d __MACOSX
	rm aardvark.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
}

aardvark_install
