sudo  apt-get -y install python3-venv
pip3 uninstall gns-server gns3-gui -y
python3 -m venv /home/test/gns3env
source /home/test/gns3env/bin/activate
pip3 install pip --upgrade
pip3 install gns3-{server,gui}==2.2.56 PyQt5
