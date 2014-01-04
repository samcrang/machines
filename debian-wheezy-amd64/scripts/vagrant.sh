echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant

# Speed up logins
echo 'UseDNS no' >> /etc/ssh/sshd_config

mkdir -p /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' --output-document=/home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

