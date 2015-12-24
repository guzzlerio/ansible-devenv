# -*- mode: ruby -*-
# vi: set ft=ruby :
#


playbook = 
    if File.exists? 'devenv.playbook'
        'devenv.playbook'
    else
        'default.playbook'
    end

Vagrant.configure(2) do |config|
    config.vm.box           = "ubuntu/vivid64"
    config.vm.network       "private_network", ip: "192.168.56.3"
    config.ssh.forward_agent = true

    config.vm.provision :ansible do |ansible|
        ansible.playbook = playbook
    end

    config.vm.provider :virtualbox do |vb|
        vb.name = "area-devenv-ansible-lab"
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        vb.customize ["modifyvm", :id, "--memory", "2048"]
        vb.customize ["modifyvm", :id, "--cpus", 2]
    end
end
