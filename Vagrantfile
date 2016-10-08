# -*- mode: ruby -*-
# vi: set ft=ruby :
#
#
playbook =
    if File.exists? 'devenv.playbook'
        'devenv.playbook'
    else
        'default.playbook'
    end

Vagrant.configure(2) do |config|
    config.vm.box           = "ubuntu/trusty64"
    config.vm.network       "private_network", ip: "192.168.56.3"
    config.vm.synced_folder "shared/", "/srv/shared"
    config.ssh.forward_agent = true

    #config.vm.provision :ansible do |ansible|
    #    ansible.playbook = playbook
    #end
    #
    config.vm.provision "file", source: "vimrc.template", destination: "/home/vagrant/.vimrc"
    config.vm.provision "shell", path: "packages.sh", privileged: true
    config.vm.provision "shell", path: "bootstrap.sh", privileged: false


    config.vm.provider :virtualbox do |vb|
        vb.name = "area-devenv-ansible-lab"
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        vb.customize ["modifyvm", :id, "--memory", "8192"]
        vb.customize ["modifyvm", :id, "--cpus", 4]
    end
end
