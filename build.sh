rm -rf .kargo
git clone https://github.com/rodis/kargo.git .kargo
rm .kargo/inventory/inventory.example
rm .kargo/inventory/local-tests.cfg
curl https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/openstack.py > .kargo/inventory/openstack.py
curl https://gist.githubusercontent.com/rodis/0d72933ca59bce91fab2e15a91b76721/raw/6fdc504a1c3e1a1465b812b3ada3784b9ed71f3a/static > .kargo/inventory/static
chmod +x .kargo/inventory/openstack.py
cd .kargo
export OS_TENANT_ID="e3b871e953934eb7b9db47edbce06694"
ansible-playbook -i inventory cluster.yml -e "bootstrap_os=ubuntu" -e "cloud_provider=openstack" --ssh-extra-args="-o StrictHostKeyChecking=no" --private-key /root/.ssh/k8s -s -u ubuntu
