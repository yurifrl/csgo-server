INSTALL_PATH=/root/csgo-server/vm

#Steamcmd installation
mkdir -p /server/steamcmd
mkdir -p /server/csgo
cd /server/steamcmd || exit
wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz

cp $INSTALL_PATH/rssh.conf /etc/rssh.conf

#Server Start
cd /server/csgo || exit

cp $INSTALL_PATH/start.sh /server/csgo/start.sh
chmod 755 /server/csgo/start.sh
