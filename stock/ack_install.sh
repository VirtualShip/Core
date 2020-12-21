ack_install () {
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: ack \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1j5HN94-AmBzdNC9VTSAwcAC-G6LbbGFn ack.zip
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip ack.zip
        rm -rf -d __MACOSX
        rm ack.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}