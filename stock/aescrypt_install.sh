aescrypt_install () {
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: aescrypt \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1n6tR44bgt16h4n-21U8q0NCcI3rAHvaF aescrypt.zip
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