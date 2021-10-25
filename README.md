This is the setup of the VM_Cluster for the container hosts:

Assumptions:
this was built for a deploy to 8, 4 core machines with 8GB RAM running Ubuntu 20.04

My lab machines are in the IPv4 range of 10.42.0.201 to 10.42.0.210
and  
the machine at 10.42.0.205 will be used for web interfaces
whereas the one at 10.42.0.210 will be the jumpserver

All machines have the following requirements

Git,
Docker (installed via ansible)
Ansible,

this creates a Lab of 8 machines running as a docker swarm

Steps:
setup ssh keys
on each machine:

ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R 10.42.0.2xx

share them between all the machines
ssh-copy-id $USER@10.42.0.2xx

establish passwordless sudo on the swarm machines

sudo visudo

add this line at the end of the file:

$USER  ALL = (ALL) NOPASSWD: ALL

clone this Repository to the jump server (10.42.0.210)

git clone https://github.com/CubeSpawn/VM_Cluster.git

run the ansible prereqs.yml with

ansible-playbook -i hosts prereqs.yml

If there are no major errors/conflicts/missing libraries

then run 

ansible-playbook -i hosts swarm.yml

you should now have a running swarm


