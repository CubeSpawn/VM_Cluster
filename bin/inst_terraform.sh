wget https://releases.hashicorp.com/terraform/1.0.6/terraform_1.0.6_linux_amd64.zip

sudo apt install zip -y

sudo unzip terraform_1.0.6_linux_amd64.zip

sudo mv terraform /usr/local/bin/

sudo rm terraform_1.0.6_linux_amd64.zip

exit 0