Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.3"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder ".", "/vagrant/ansible-postgresql", create: true, mount_options: ['dmode=777','fmode=666']
  config.vm.provision "shell", inline: <<-SHELL
    yum install -y epel-release
    yum install -y ansible

    cd /vagrant/ansible-postgresql/tests

    ansible-playbook -i hosts playbook.yml
  SHELL
end
