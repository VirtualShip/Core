a52dec_install () {
	sha="ba9ef76d3d69aacb1b603f362c8729ea4566c9bb305fa898768e16b339aa05710651bda68ee2902e07e5ca5f49e1478bf9859740d7a4d949b2f366d94affa8fb  a52dec.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: a52dec \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1hy72s6YU8x_l7t-bmj3VlKbezD9p0sJ3 a52dec.zip
	result=`sha -c a52dec.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f a52dec.zip
		rm -f cookie
		return
	fi
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
	sleep 2
	unzip a52dec.zip
	rm -rf -d __MACOSX
	rm a52dec.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
}

a52dec_install



