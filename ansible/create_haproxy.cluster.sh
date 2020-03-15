#!/bin/sh

###################################################################
#Author           : Muhammad Y Efendi
#		    https://akaicloud.com
#Email            : myusufe@gmail.com
###################################################################

ansible-playbook create_folder.yml
ansible-playbook -i host_inventory haproxy.yml
