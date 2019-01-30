# Prerequisites for ansible to communicate with a Windows Host.
yum install python-pip -y &&
pip install --upgrade pip &&
pip install pywinrm &&

# Stop the creation of .retry files when a playbook fails to run.
sed -i "s:#retry_files_enabled = False:retry_files_enabled = False:g" /etc/ansible/ansible.cfg
