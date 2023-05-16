machines = {
  "master" => {"memory" => "768", "cpu" => "1", "image" => "bento/ubuntu-22.04", "ip"=>"192.168.1.6"},
 # "node01" => {"memory" => "768", "cpu" => "1", "image" => "bento/ubuntu-22.04", "ip"=>"192.168.1.61"},
 # "node02" => {"memory" => "768", "cpu" => "1", "image" => "bento/ubuntu-22.04", "ip"=>"192.168.1.62"},
  "node03" => {"memory" => "768", "cpu" => "1", "image" => "bento/ubuntu-22.04", "ip"=>"192.168.1.16"}
  
}

Vagrant.configure("2") do |config|

  machines.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}"
      machine.vm.network "public_network", ip: "#{conf["ip"]}",  bridge: "wlx00e0450e02ce"
      machine.vm.provider "virtualbox" do |vb|
        vb.name = "#{name}"
        vb.memory = conf["memory"]
        vb.cpus = conf["cpu"]
        
      end
      machine.vm.provision "shell", path: "instalar-docker.sh" 

      if "#{name}" == "master" 
        machine.vm.provision "shell", path: "master.sh"
        machine.vm.provision "shell", path: "instalar-docker-compose.sh"
        machine.vm.provision "shell", path: "criar-arquivo-docker-compose.sh"
        machine.vm.provision "shell", path: "compartilhamento-mysql-host-master.sh"
        machine.vm.provision "shell", path: "iniciar-servicos.sh"
      else
        machine.vm.provision "shell", path: "worker.sh"
        machine.vm.provision "shell", path: "compartilhamento-pasta-mysql-host-worker.sh"
      end

    end
  end
end