required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|


  config.vm.define "db" do |db|
    db.vm.box = "Ubuntu/xenial64"
    db.vm.network "private_network", ip: "192.168.10.150"
    db.hostsupdater.aliases = ["database.local"]
    db.vm.synced_folder "environment/db", "/home/ubuntu/environment"
    db.vm.provision "ansible_local" do |ansible|
        ansible.install = true
        ansible.playbook = "/home/ubuntu/environment/provision/db_playbook.yml"
    end
  end

  config.vm.define "app" do |app|
      app.vm.box = "Ubuntu/xenial64"
      app.vm.network "private_network", ip: "192.168.10.100"
      app.hostsupdater.aliases = ["development.local"]
      app.vm.synced_folder "environment/app", "/home/ubuntu/environment"
      app.vm.provision "ansible_local" do |ansible|
         ansible.install = true
         ansible.playbook = "/home/ubuntu/environment/provision/app_playbook.yml"
      end
  end






end
