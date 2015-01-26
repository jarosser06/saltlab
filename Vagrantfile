# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provision 'shell', path: 'provision/base.sh'

  if Vagrant.has_plugin?('vagrant-berkshelf')
    config.berkshelf.enabled = false
  end

  if Vagrant.has_plugin?('vagrant-cachier')
    config.cache.scope = :machine
  end

  config.vm.define 'master' do |master|
    master.vm.box = 'chef/ubuntu-14.04'
    master.vm.hostname = 'master'
    master.vm.synced_folder './saltmaster', '/srv/salt'
    master.vm.synced_folder './formulas', '/srv/formulas'
    master.vm.network 'private_network', ip: '192.168.10.2'
    master.vm.provision 'shell', path: 'provision/ubuntu/base.sh'
    master.vm.provision 'shell', path: 'provision/ubuntu/master.sh'
  end

  ## Ubuntu Minion
  config.vm.define 'minion1' do |minion|
    minion.vm.box = 'chef/ubuntu-14.04'
    minion.vm.hostname = 'minion1'
    minion.vm.network 'private_network', ip: '192.168.10.3'
    minion.vm.provision 'shell', path: 'provision/ubuntu/base.sh'
    minion.vm.provision 'shell', path: 'provision/ubuntu/minion.sh'
  end

  ## Centos Minion
  config.vm.define 'minion2' do |minion|
    minion.vm.box = 'chef/centos-6.5'
    minion.vm.hostname = 'minion2'
    minion.vm.network 'private_network', ip: '192.168.10.4'
    minion.vm.provision 'shell', path: 'provision/centos/base.sh'
    minion.vm.provision 'shell', path: 'provision/centos/minion.sh'
  end
end
