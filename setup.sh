pr()
{
	echo -e "$(random)=====================\n\033[0mINSTALLING FOR TERMUX\n$(random)====================="
}
unz()
{
	cd ~/Locate
	if [ -e seeker ];then
	pr
	msg already unzip
	else
	pr
	unzip seek.zip -d seeker
	fi
}
ds()
{
    pr
    command -v php || apt install  php
    pip install requests packaging psutil
    pr
}
command -v msg || bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/ce6248bd681844d35a12bd210989eb89/raw/install)"
ds
unz
msg shortcut cmd : sk
cd $PREFIX/bin
if [ -e sk ];then
msg already added shortcut cmd : sk
else
cd $PREFIX/bin
cat >> sk << EOF
cd ~/Locate
bash loca*
EOF
chmod 777 sk
fi