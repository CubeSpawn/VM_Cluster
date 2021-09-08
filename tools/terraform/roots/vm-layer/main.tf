terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.1-alpha.1"
    }
  }
}

provider "virtualbox" {
  # Configuration options
}

resource "virtualbox_vm" "node" {
  count     = 2
  name      = format("node-%02d", count.index + 1)
  image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus      = 2
  memory    = "3072 MB"
 # user_data = file("${path.module}/user_data")

  network_adapter {
    type           = "hostonly"
    host_interface = "eth1"
  }
  network_adapter {
    type           = "bridged"
    host_interface = "eth2"
  }
}

output "IPAddr" {
  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 1)
}

output "IPAddr_2" {
  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 2)
}