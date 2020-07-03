Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.name = "BiomID-Project"
    v.memory = 4096
  end

  config.vm.network "forwarded_port", guest: 3001, host: 3001

  config.vm.provision :shell, path: "provisionning.sh"
end
