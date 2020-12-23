acme_install () {
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: acme \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1OgeMS5KRC4zAi1e8w0Eg2hPi1L20PCdm acme.zip
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip acme.zip
        rm -rf -d __MACOSX
        rm acme.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

acme_install