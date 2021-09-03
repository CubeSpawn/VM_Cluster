#From: https://docs.docker.com/engine/install/ubuntu/

sudo apt update

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install -y docker-ce docker-ce-cli containerd.io

#From https://github.com/docker/machine/releases/

curl -L https://github.com/docker/machine/releases/download/v0.16.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
    chmod +x /tmp/docker-machine &&
    sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

#From https://linuxize.com/post/how-to-install-virtualbox-on-ubuntu-20-04/

sudo apt update
env APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | \ 
sudo tee -a /etc/apt/sources.list.d/virtualbox.list

sudo apt update
sudo apt install -y virtualbox-6.1


#From https://linuxize.com/post/how-to-install-vagrant-on-ubuntu-20-04/

cd ~/
mkdir vagrant-2.2.18
cd vagrant-2.2.18

curl -O https://releases.hashicorp.com/vagrant/2.2.18/vagrant_2.2.18_x86_64.deb

sudo apt install -y ./vagrant_2.2.18_x86_64.deb

vagrant plugin install vagrant-vboxmanage

vagrant plugin install vagrant-vbguest

cd ~/
vagrant --version