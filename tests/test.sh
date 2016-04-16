#!/bin/sh
ansible-galaxy install yaegashi.blockinfile
ansible-playbook -i hosts playbook.yml

