abcmidi_install () {
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: abcmidi \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 17jHSgzoNpkzUP8q63fuGKfvOFl9K1un8 abcmidi.zip
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip abcmidi.zip
        rm -rf -d __MACOSX
        rm abcmidi.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}