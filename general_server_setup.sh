bash ./install_vimrc.sh
bash ./install_docker.sh
bash ./install_anaconda.sh
sudo apt-get update
sudo apt-get upgrade -y
sudo dpkg-reconfigure --priority=low unattended-upgrades
sudo apt-get install git bc nginx -y
