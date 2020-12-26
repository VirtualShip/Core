automake_install () {
        sha="2789e443c259014e328349cdbf4f9243e80ea1a8f1fde241f7de099ab10df82ed481e07cffd1d5ea4561a554677789606970dc577655ff6053a85a2a2f6a81b0  automake.zip"
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: automake \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1vUzbsepHdFPzgjzDlnvFJUzZdVDRbBsj automake.zip
        result=`sha -c automake.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f automake.zip
		rm -f cookie
		return
	fi
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip automake.zip
        rm -rf -d __MACOSX
        rm automake.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

automake_install