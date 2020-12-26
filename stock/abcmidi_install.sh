abcmidi_install () {
        sha="5e6d05acb40b8cbe523d86a3973a558ebe98907444854a41b8496273d32b5362136a7dc68efc4add4532cbf2f21bdf5130a61bc3819cfcd6aaae121e8aa696b2  abcmidi.zip"
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: abcmidi \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 17jHSgzoNpkzUP8q63fuGKfvOFl9K1un8 abcmidi.zip
	result=`sha -c abcmidi.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f abcmidi.zip
		rm -f cookie
		return
	fi
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

abcmidi_install
