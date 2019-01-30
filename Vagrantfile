# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false

  config.vm.define "control" do |ctrl|

    ctrl.vm.box = "ansible/tower"
    ctrl.vm.hostname = "ubuntu-control"
    ctrl.vm.network "private_network", ip: "192.168.24.2"

    ctrl.vm.synced_folder "./", "/vagrant"

    ctrl.vm.provision "shell", path: "provision/control.sh", privileged: true

    ctrl.vm.provider "virtualbox" do |vb|
      vb.memory = 1024

    end
  end

  config.vm.define "windows" do |win|

    win.vm.box = "christophershoemaker/win2k8r2sp1.box"
    win.vm.hostname = "dev-box"
    win.vm.communicator = "winrm"
    win.vm.network "private_network", ip: "192.168.24.3"

    win.winrm.username = "vagrant"
    win.winrm.password = "vagrant"

    win.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 2

    end
  end
end
