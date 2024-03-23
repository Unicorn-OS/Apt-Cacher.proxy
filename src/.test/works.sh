cd ..

ubuntu_version=23.10

_tested_works(){
  ubuntu_version=22.04
  ubuntu_version=23.10
}

container_server(){
  cd ansible
  ansible-playbook in\ container.yml
  cd -
}

vagrant_client(){
  cd vagrant/Ubuntu/$ubuntu_version/
  ./ln.sh
  vagrant up
  cd -
}

list_cache(){
  ls -h ~/.uni/data/proxy-cache/apt-cacher-ng/mirrors.edge.kernel.org/ubuntu/dists
}

main(){
  container_server
  vagrant_client
  sleep 5
  list_cache
}
