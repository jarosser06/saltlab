# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.define 'master' do |master|
    master.vm.hostname = 'master'
    master.vm.synced_folder './saltmaster', '/srv/salt'
    master.vm.network 'private_network', ip: '192.168.10.2'
    master.vm.provision 'shell', path: 'base.sh'
    master.vm.provision 'shell', path: 'master.sh'
  end

  config.vm.define 'minion' do |minion|
    minion.vm.hostname = 'minion'
    minion.vm.network 'private_network', ip: '192.168.10.3'
    minion.vm.provision 'shell', path: 'base.sh'
    minion.vm.provision 'shell', path: 'minion.sh'
  end
end
