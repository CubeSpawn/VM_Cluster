This automates the setup of the VM_Cluster

Assumptions:
this was built for a deploy to 8 4 core machines with 8GB RAM
running Ubuntu 20.04

A 9th machine was used to stage the install
all 9 machines have passwordless ssh

using:
$ssh-keygen -f "/home/$USERNAME/.ssh/known_hosts" -R "IPxx.xx.xx.xx"

and
ssh-copy-id $USER@IPxx.xx.xx.xx

and passwordless sudo

sudo visudo

user       ALL = (ALL) NOPASSWD: ALL


All machines have the following requirements

Git
Virtualbox
Docker
docker-machine
Vagrant
Ansible
Consul
Nomad

for the Lab this is 8 physical machines each hosting a docker container VM
Clone this to the jump server
Collect IPv4 addresses
setup SSH keys
run the "deploy.sh" bash script


