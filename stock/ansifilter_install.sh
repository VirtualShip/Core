ansifilter_install () {
        sha="5f54599139b97616a62a76f693df752a05656d472ee61c724c5d8912c6af2d93c1015d78881ea273c4d08f92425c15a874702993996fec719c2653ac8fdece82  ansifilter.zip"
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: ansifilter \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 14IlSmhSyK2Q-OR7MtgBRz_eKqV0NoUYV ansifilter.zip
        result=`sha -c ansifilter.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f ansifilter.zip
		rm -f cookie
		return
	fi
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip ansifilter.zip
        rm -rf -d __MACOSX
        rm ansifilter.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

ansifilter_install