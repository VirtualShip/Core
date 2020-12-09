aardvark_install () {
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: aardvark \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdown https://drive.google.com/uc?id=1E4Rv7orWsCK57VGES45hveEb5a1m-o-v
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
	sleep 2
	unzip aardvark.zip
	rm -rf -d __MACOSX
	rm aardvark.zip
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
}
