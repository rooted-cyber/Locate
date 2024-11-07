banner()
{
	tof Locate
	echo
	printf "\033[1;93m[\033[1;77m::\033[1;93m]	\033[1;92mCreate by : \033[1;97mhttps://github.com/thewhiteh4t	\033[1;93m[\033[1;77m::\033[1;93m]"
	printf "\n\033[1;93m[\033[1;77m::\033[1;93m]	\033[1;92mEdited by : \033[1;97mhttps://github.com/rooted-cyber	\033[1;93m[\033[1;77m::\033[1;93m]\n"
	printf "\n\033[1;93m	[\033[1;97m::\033[1;93m]	\033[1;96mThis Tool Version : \033[1;97m1.3.1	\033[1;93m[\033[1;77m::\033[1;93m]\n"
}
crf()
{
	msg now extract and installing
	cd ~/Locate
	if [ -e ngrok ];then
	msg
	else
	mkdir ngrok
	fi
	}
banner
msg
seek()
{
	if [ $(command -v ngrok) ];then
	msg
	else
	msg Not install ngrok
	exit
	fi
		cd ~/.config/ngrok
		if [ -e ngrok.yml ];then
		python3 ~/Locate/seeker/seeker.py
		else
		msg First add ngrok token 
		exit
		fi
}
din()
{
	if [ $(command -v ngrok) ];then
	msg Already installed ngrok
	exit
	else
	msg now downloading ngrok
	wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz
	fi
	cd ~/Locate
	crf
	tar -xvzf ngrok*tgz -C ngrok
	cd ngrok
	chmod 777 ngrok
	cp ngrok $PREFIX/bin
	msg now installed ngrok
	msg
	msg Now installing ngrok token
	echo -en "$(random) Enter ngrok token :\033[0m "
	read n
	if [ $n ];then
	msg now adding 
	ngrok config add-authtoken $n
	fi
	}
ann() 
{
	msg Note : get your ngrok token code 
	printf "\033[0m https://dashboard.ngrok.com/get-started/your-authtoken"
	cd ~/.config/ngrok > /dev/null 2>&1
	if [ -e ngrok.yml ];then
	msg already added token
	else
	msg installing token
	echo -en "$(random) Enter ngrok token :\033[0m "
	read n
	if [ $n ];then
	msg now adding 
	ngrok config add-authtoken $n
	fi
	fi
	}
menu()
{
		msg 1. Ngrok server
		msg 2. Add Ngrok token
		msg 3. Download and install ngrok with token
		msg
		echo -e -n "Select \033[0m : >> "
		read b
		case $b in
		1)seek ;;
		2)ann ;;
		3)din ;;
		esac
}
menu