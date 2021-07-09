# Manage aura RGB keyboard on ubuntu.
# This script is fully inspired from https://github.com/wroberts/rogauracore
# Type `rogauracore` in terminal to see the full usage

sudo apt install libusb-1.0-0 libusb-1.0-0-dev
VERSION=1.4
curl -LOs https://github.com/wroberts/rogauracore/releases/download/$VERSION/rogauracore-$VERSION.tar.gz
tar xf rogauracore-$VERSION.tar.gz
cd rogauracore-$VERSION/
./configure
make
sudo make install
sudo rm rogauracore-$VERSION.tar.gz
sudo rm -fr rogauracore-$VERSION
