#====================================================================
#==================== Node JS Installation ==========================
#====================================================================
## Adding the NodeSource APT repository for Debian-based distributions repository AND the PGP key for verifying packages
sudo curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -

sudo apt-get install -y nodejs

#====================================================================
#================== Browser-sync JS Installation ====================
#====================================================================
sudo npm install -g browser-sync
#====================================================================
#==================Apache2 server installation ======================
#====================================================================
sudo apt install -y apache2

#====================================================================
#====================Php 7.3 installation ===========================
#====================================================================
# Add php PPA
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt install -y php7.3 php7.3-cli php7.3-common

#====================================================================
#======================Mysql server install =========================
#====================================================================
sudo apt install -y mysql-server

##Mysql configuration
sudo mysql_secure_installation 

#====================================================================
#====================Phpmyadmin installation ========================
#====================================================================
sudo apt-get install -y phpmyadmin
#if does'nt work reconfigure it by
#sudo dpkg-reconfigure phpmyadmin
#and don't forget enable apache2 by striking on "space"

#====================================================================
#==================== Firefox videos player plugins =================
#====================================================================
sudo apt install -y libavcodec-extra

#====================================================================
#======================== VLC Videos player =========================
#====================================================================
sudo apt install vlc

#====================================================================
#=================== Intellij idea community ========================
#====================================================================
sudo snap install intellij-idea-community --classic --edge

#====================================================================
#=================== Mysql Workbench Community ======================
#====================================================================
sudo snap install mysql-workbench-community

#====================================================================
#============================ Postman ===============================
#====================================================================
sudo snap install postman --classic

#====================================================================
#============================ VS CODE ===============================
#====================================================================
sudo snap install code --classic --edge
