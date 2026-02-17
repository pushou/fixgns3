sudo su -
yes|apt  purge  docker-ce

VERSION_STRING="5:28.5.2-1~debian.11~bullseye"

# Install Docker CE, CLI, and containerd at the specific version
sudo apt-get install --allow-downgrades -y \
  docker-ce=$VERSION_STRING \
  docker-ce-cli=$VERSION_STRING \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin
sudo apt-mark hold docker-ce docker-ce-cli containerd.io
