# Without libdbus virtualbox would not start automatically after compile
sudo apt-get -y install --no-install-recommends libdbus-1-3
sudo apt-get -y install dkms
sudo apt-get -y install linux-headers-$(uname -r) build-essential
sudo apt-get -y install ruby

sudo mount -o loop ~vagrant/*.iso /mnt
yes | sudo sh /mnt/VBoxLinuxAdditions.run
sudo umount /mnt

rm ~vagrant/*.iso
