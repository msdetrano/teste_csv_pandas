#! /bin/bash

echo "Script POS Instalacao Cento 7"

echo "Configurar interface de rede"

nmcli con ens33 ipv4.address 192.168.15.7/24
nmcli con mod ens33 ipv4.gateway 192.168.15.1
nmcli con mod ens33 ipv4.method manual
nmcli con mod ens33 ipv4.dns "8.8.8.8"
nmcli con up ens33



echo "Atualizando"

sudo yum update && sudo yum upgrade
sudo yum autoremove


echo "Instalando repositórios"

sudo rpm -Uvh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
sudo yum install -y epel-release
sudo rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo rpm -Uvh http://dl.atrpms.net/all/atrpms-repo-7-7.el7.x86_64.rpm
sudo rpm -Uvh http://repo.webtatic.com/yum/el7/webtatic-release.rpm


echo "Ferramentas de rede"

sudo yum install -y iperf iperf3
sudo yum install -y iptraf
sudo yum install -y vnstat
sudo yum install -y nmap
sudo yum install -y tcpdump
sudo yum install -y wireshark
sudo yum install -y wireshark-gnome
sudo yum install -y putty
sudo yum install -y remmina

echo "Instalar Java"

sudo yum install -y icedtea-web
sudo yum install -y java-1.8.0-openjdk
sudo yum install -y java-1.8.0-openjdk-devel

echo "Acabou....Continue testando e repassando conhecimento, facilite a sua vida e a do seu próximo!!!"