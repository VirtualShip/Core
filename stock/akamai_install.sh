akamai_install () {
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: akamai \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1JfsobQpuxmA0LZND4eTAdkl0Jr11I_uN akamai.zip
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