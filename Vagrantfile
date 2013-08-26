Vagrant.configure("2") do |config|
  config.vm.box = "centos6.4"
  config.vm.network :private_network, ip: "192.168.33.13"

  config.vm.provision :shell, :path => "setup_ansible.sh"
  config.vm.synced_folder "provisioning", "/home/vagrant/provisioning"
  config.vm.provision :shell, :inline =>
    "ansible-playbook -i provisioning/ansible_hosts -l localhost -c local provisioning/playbook.yml"
end
