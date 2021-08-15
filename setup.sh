# Create first sudo-able user
echo "Wie lautet der Nutzername des ersten Admins? "
read ADMINUSER
adduser "$ADMINUSER"
usermod -aG sudo "$ADMINUSER"
dpkg-statoverride --update --add root sudo 4750 /bin/su

# Install Virtualmin
wget "http://software.virtualmin.com/gpl/scripts/install.sh"
chmod o+x install.sh
./install.sh

# Install basic components
sudo apt-get update
sudo apt-get install -y nano git rsync php-curl php-gd
