
#Ubuntu requirements
cd /etc/apt/sources.list.d || exit
echo "deb http://old-releases.ubuntu.com/ubuntu/ raring main restricted universe multiverse" >ia32-libs-raring.list
dpkg --add-architecture i386
apt-get -y update
apt-get -y install ia32-libs
apt-get -y install wget

#Steamcmd installation
mkdir -p /server/steamcmd
mkdir -p /server/csgo
cd /server/steamcmd || exit
wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz

apt-get install -y openssh-server rssh
cp /usr/local/src/rssh.conf /etc/rssh.conf

#Server Start
cd /server/csgo || exit
cp /usr/local/src/start.sh /server/csgo/start.sh
chmod 755 /server/csgo/start.sh

source /usr/local/src/envs.sh
