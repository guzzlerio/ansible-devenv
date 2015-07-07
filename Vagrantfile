# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
    config.vm.box           = "ubuntu/vivid64"
    config.vm.network       "private_network", ip: "192.168.56.3"
    config.ssh.forward_agent = true

    config.vm.provision :ansible do |ansible|
        ansible.playbook = "c-playbook.yml"
    end
end
