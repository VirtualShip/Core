abcm2ps_install () {
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: abcm2ps \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1_tJ33lL6BCGOSZTvq49mLQVLc-rQTEjx abcm2ps.zip
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
	sleep 2
	unzip abcm2ps.zip
	rm -rf -d __MACOSX
	rm abcm2ps.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
}

abcm2ps_install
