maintain () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: VirtualShip \033[0m"
	sleep 1
	
	cd /usr/local/Warehouse
	
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 1
	
	rm -rf ship
	rm -rf -d stock
	rm -rf README.md
	rm -rf LICENSE
 	
	echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
	sleep 1

	git clone https://github.com/VirtualShip/Core

	echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
	sleep 1
	
	cd Core
	mv /usr/local/Warehouse/Core/README.md /usr/local/Shipper/README.md
	mv /usr/local/Warehouse/Core/ship /usr/local/Shipper/ship
	mv /usr/local/Warehouse/Core/stock /usr/local/Shipper/stock
	mv /usr/local/Warehouse/Core/LICENSE /usr/local/Shipper/LICENSE
	rm -rf maintain.sh
	rm -rf refurbish .sh
	rm -rf return.sh

	cd ..
	
	echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2

	chmod +x ship
	
	echo -e "\033[92;1;4m🏡 Package received! VirtualShip succesfully refurbished. \033[0m"
	sleep 3
	rm -rf -d Core
	return
}

