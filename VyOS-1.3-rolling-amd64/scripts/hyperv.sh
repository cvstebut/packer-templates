#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

sudo apt-get -y update

# Tweak sshd to prevent DNS resolution (speed up logins)
set service ssh disable-host-validation
commit
save

