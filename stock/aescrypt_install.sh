aescrypt_install () {
        sha="e1e18b4ca2989c3cc8ccd67f9e58715d9576315b87b9bb2da4e7dce6036e4d2c33155f1fba038cea855f8c3382992a2e58d1ae3088e462252cf642453fc98e08  aescrypt.zip"
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: aescrypt \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1n6tR44bgt16h4n-21U8q0NCcI3rAHvaF aescrypt.zip
        result=`sha -c aescrypt.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f aescrypt.zip
		rm -f cookie
		return
	fi
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip aescrypt.zip
        rm -rf -d __MACOSX
        rm aescrypt.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

aescrypt_install