#!/bin/bash

ansible-playbook -i hosts kube-dependencies.yaml
sleep 1
ansible-playbook -i hosts master.yml
sleep 1
ansible-playbook -i hosts workers.yaml