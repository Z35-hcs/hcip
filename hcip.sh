#!/bin/bash
# proyecto INFO IP DE SPYCI-HC

banner() {
echo -e ""
echo ""
echo -e  "\e[1;32m          / // ____|  __ \ \   / / ____|_   _|    | |  | |/ ____|                              \e[0m"
echo -e  "\e[1;32m         / /| (___ | |__) \ \_/ / |      | |______| |__| | |                             \e[0m"
echo -e  "\e[1;32m        / /  \___ \|  ___/ \   /| |      | |______|  __  | | \e[0m""\e[1;30m        \e[0m"
echo -e  "\e[1;32m       / / _ ____) | |      | | | |____ _| |_     | |  | | |____  \e[0m""\e[1;30m      \e[0m"
echo -e  "\e[1;32m      /_/ (_)_____/|_|      |_|  \_____|_____|    |_|  |_|\_____|   \e[0m""\e[1;30m      \e[0m"
echo -e  "\e[1;32m                \e[0m"
echo -e ""	
echo -e "\e[32m                     SPYCI HC \e[36m/ \e[1;37a.k.k.a Alain      "
echo -e "\e[35m  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+* "
echo -e "\e[35m  +  \e[1;32mFacebook : \e[36mhttps://www.facebook.com/porfile.php?id=100072703863156   \e[35m+ " 
echo -e "\e[35m  +  \e[1;32mTiktok : \e[36mvm.tiktok.com/ZM8vB4FHm/             \e[35m+ "
echo -e "\e[35m  + \e[37mYoutube : https://www.youtube.com/channel/UC_OJ5h5ZFFwQMUeMP5ZUGXQ \e[35m+ "
echo -e "\e[35m  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+* "
echo -e ""
}

restartprogram() {
echo "
Esa Opción es incorrecta, elije de nuevo !
Elige entre el [ 1-2-3 ]"
sleep 2
clear
menuprincipal
}


miIP() {
	curl -s http://ip-api.com/
	echo ""
	exit
}

tarjetaip() {
	echo ""
	echo -e "\e[36m Escribe la dirección IP \e[0m"
	echo -e "\e[1;32m╭─UFO@MHK4"
	read -p "╰─$ " target
	curl -s http://ip-api.com/$target
	echo -e ""
	exit
}
    
menuprincipal() {
    clear
	banner
	echo -e "\e[1;34m[\e[1;37m1\e[1;34m]\e[0m" "\e[36mInformación de mi IP\e[0m"
	echo -e "\e[1;34m[\e[1;37m2\e[1;34m]\e[0m" "\e[36mInformación de alguna IP\e[0m"
	echo -e "\e[1;34m[\e[1;37m3\e[1;34m]\e[0m" "\e[1;31mSalir de INFOIP\e[0m"
    echo -e "\e[1;32m"
	echo -e "Elige entre el [1-2-3]"
	echo -e ""
	read -p "[+]~$ " opt
	if [ $opt -eq 1 ];
		then
			miIP
	elif [ $opt -eq 2 ];
		then
			tarjetaip                                            

	elif [ $opt -eq 3 ];
		then
			echo -e "\e[1;33mGracias por usar INFO IP BY </SPYCI HC> "
			exit
	else
		sleep 1
		restartprogram
	fi

}


menuprincipal
