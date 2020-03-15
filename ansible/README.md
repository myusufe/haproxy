# Deploy HAProxy cluster VM Using Ansible Playbook in VMWARE

## Description

This is playbook and role to deploy HAProxy cluster virtual machines using Ansible. This playbook will deploy these VMs: 
* HAProxy server (haproxy01, haproxy02)

Both bash scripts need ovftool installed

## Requirements
* Python (≥ 2.6)
* Ansible
* PyVmomi

## Configuration
The required files are:
```
.
|-- README.md
|-- all_config.yml
|-- ansible.cfg
|-- create_folder.yml
|-- create_haproxy.cluster.sh
|-- haproxy.yml
|-- host_inventory
`-- roles
    |-- create-folder
    |   `-- tasks
    |       `-- main.yml
    `-- haproxy
        |-- defaults
        |   `-- main.yml
        |-- files
        |   |-- 400.http
        |   |-- 403.http
        |   |-- 408.http
        |   |-- 500.http
        |   |-- 502.http
        |   |-- 503.http
        |   `-- 504.http
        |-- handlers
        |   `-- main.yml
        |-- tasks
        |   `-- main.yml
        |-- templates
        |   `-- haproxy.cfg.j2
        `-- vars
            `-- main.yml
```

- all_config.yml : All playbook var parameters
- ansible.conf : Define ansible roles
- haproxy.yml : playbook file to create HAProxy cluster (2 nodes)
- host_inventory : Host inventory 
- roles : role directory
- create_haproxy.cluster.sh : bash script to create HAProxy cluster

## Execution

*Create HAProxy cluster
```
sh create_haproxy.cluster.sh 
```
