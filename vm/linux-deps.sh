#Ubuntu requirement# s
cd /etc/apt/sources.list.d || exit
echo "deb http://old-releases.ubuntu.com/ubuntu/ raring main restricted universe multiverse" >ia32-libs-raring.list
dpkg --add-architecture i386
apt-get -y update
apt-get -y install ia32-libs
apt-get -y install wget
apt-get install -y openssh-server rssh

