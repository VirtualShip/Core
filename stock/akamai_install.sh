akamai_install () {
        sha="193d209aad072cd48c34ffd774ac788a5b6cb1227ca897606e5342192a6f1ae22d40e485c1e66b61ae736f749eb9d849f082a16472aa9a262ed653533826888a  akamai.zip"
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: akamai \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1JfsobQpuxmA0LZND4eTAdkl0Jr11I_uN akamai.zip
        result=`sha -c akamai.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f akamai.zip
		rm -f cookie
		return
	fi
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip akamai.zip
        rm -rf -d __MACOSX
        rm akamai.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

akamai_install