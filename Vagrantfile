Vagrant.configure("2") do |config|
  config.vm.box = "centos6.4"
  config.vm.network :private_network, ip: "192.168.33.13"

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.inventory_file = "provisioning/ansible_hosts"
  end
end
