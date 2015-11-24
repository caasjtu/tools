#! /bin/sh
echo "backup sources.list"
sudo mv /etc/apt/sources.list /etc/apt/sources.list.copy 
sudo touch /etc/apt/sources.list
echo "add sjtu sources"
sudo echo "deb http://ftp.sjtu.edu.cn/ubuntu/ trusty main multiverse restricted universe 
deb http://ftp.sjtu.edu.cn/ubuntu/ trusty-backports main multiverse restricted universe 
deb http://ftp.sjtu.edu.cn/ubuntu/ trusty-proposed main multiverse restricted universe 
deb http://ftp.sjtu.edu.cn/ubuntu/ trusty-security main multiverse restricted universe 
deb http://ftp.sjtu.edu.cn/ubuntu/ trusty-updates main multiverse restricted universe 
deb-src http://ftp.sjtu.edu.cn/ubuntu/ trusty main multiverse restricted universe 
deb-src http://ftp.sjtu.edu.cn/ubuntu/ trusty-backports main multiverse restricted universe
deb-src http://ftp.sjtu.edu.cn/ubuntu/ trusty-proposed main multiverse restricted universe
deb-src http://ftp.sjtu.edu.cn/ubuntu/ trusty-security main multiverse restricted universe
deb-src http://ftp.sjtu.edu.cn/ubuntu/ trusty-updates main multiverse restricted universe" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y vim wget git subversion zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

