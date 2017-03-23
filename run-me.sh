#!/bin/bash
apt-get -y install virtualbox vagrant
wget https://raw.githubusercontent.com/kassybas/my-vim-conf/master/Vagrantfile
vagrant up
