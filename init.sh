#!/bin/sh
# Created on 5月-02-20 17:23
# init.sh
# @author: xs0701
[ ! -d ~/.ssh ] && mkdir ~/.ssh
wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/xs0701/vps_init/master/authorized_keys
wget -O /etc/ssh/sshd_config https://raw.githubusercontent.com/xs0701/vps_init/master/sshd_config
systemctl restart sshd
