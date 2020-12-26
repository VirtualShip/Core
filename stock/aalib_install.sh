aalib_install () {
	sha="7cbe0f06ab7cbdb6ad7881cdfd26a3e52ca49b2410abf97abb0c382dcde3b17a670b8acb4a1e5094f6c010f6457c6730fdd50d76a077886979a8219e138bc30b  aalib.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: aalib \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1CCJFF1ZRC25WxbYZWdXlp7ZBNt7-0BJS aalib.zip
	result=`sha -c aalib.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f aalib.zip
		rm -f cookie
		return
	fi
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
	sleep 2
	unzip aalib.zip
	rm -rf -d __MACOSX
	rm aalib.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
}

aalib_install

