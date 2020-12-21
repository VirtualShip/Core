aardvark_install () {
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: aardvark \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1VpZZe5jjtzE42MlUZPG2jD1U3zbDdom8 aardvark.zip
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
