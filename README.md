# DevOps for LOHO

## Requirement

- VirtualBox
- VirtualBox Extension Pack
- Vagrant
- Docker

## Virtual Machine: VirtualBox and Vagrant

```shell=
# init
vagrant up

# init with provision
vagrant up --provision

# reload with provision
vagrant reload --provision

# shutdown
vagrant halt

# destroy
vagrant destroy
```

## Configuration Management: Ansible

```shell=
# Windows isn’t supported for the control machine
ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -i inventory --private-key=.vagrant/machines/default/virtualbox/private_key playbook.yml

# or use docker run ansible
docker run --rm -it -v $(pwd):/ansible/playbooks philm/ansible_playbook playbook.yml -i inventory --private-key=.vagrant/machines/default/virtualbox/private_key
```