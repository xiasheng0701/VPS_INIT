#!/bin/sh
#File    :   init.sh
#Date    :   2020-05-02 17:23
#Update  :   2020-12-28 13:40
#Author  :   xs71
#Version :   1.1

[ ! -d ~/.ssh ] && mkdir ~/.ssh
wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/xs71/vps_init/master/authorized_keys
wget -O /etc/ssh/sshd_config https://raw.githubusercontent.com/xs71/vps_init/master/sshd_config
# fix sftp for Centos
if [ -f /etc/redhat-release ]; then
    sed -i '77cSubsystem sftp /usr/libexec/openssh/sftp-server' /etc/ssh/sshd_config
fi
systemctl restart sshd
