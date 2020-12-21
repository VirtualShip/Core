a52dec_install () {
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: a52dec \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1hy72s6YU8x_l7t-bmj3VlKbezD9p0sJ3 a52dec.zip
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



