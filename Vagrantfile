# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vagrant.plugins = ["vagrant-reload", "vagrant-scp"]
end

saferwall_box_vagrantfile = './vagrant/Vagrantfile.saferwall-box'
load saferwall_box_vagrantfile if File.exists?(saferwall_box_vagrantfile)
