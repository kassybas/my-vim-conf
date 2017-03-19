# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
git clone https://github.com/kassybas/my-vim-conf.git
cd my-vim-conf/
bash setup.sh
cd ..
git clone https://github.com/kassybas/poem-rythm-writer.git
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.hostname = "vag-vm"

  config.vm.provision "shell", privileged: false, inline: $script
  
  config.vm.synced_folder ".", "/vag_data", create: true

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
end
