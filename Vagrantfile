# -*- mode: ruby -*-
# vi: set ft=ruby :

require "yaml"

# get env
current_dir = File.dirname(File.expand_path(__FILE__))
env = YAML.load_file("#{current_dir}/.env.yml")

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |v|
    v.memory = env["memory"]
  end

  config.vm.network :private_network, ip: env["ip"]
  config.vm.synced_folder ".", env["workspace_path"] + "/" + env["iac_path"]
  env["folders"].each do |folder|
    config.vm.synced_folder folder["from"], env["workspace_path"] + "/" + folder["to"],
      owner: "ubuntu",
      group: "www-data",
      mount_options: ["dmode=775,fmode=664"]
  end
end
