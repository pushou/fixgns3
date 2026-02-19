sudo apt update 
sudo rm -f /usr/local/bin/gns3*
sudo mkdir -p /home/gns3env
sudo  apt-get -y install python3-venv busybox-static
pip3 uninstall gns-server gns3-gui -y
sudo chown -R test:test  /home/gns3env
python3 -m venv /home/gns3env
source /home/gns3env/bin/activate
pip3 install pip --upgrade
pip3 install gns3-{server,gui}==2.2.53 PyQt5
